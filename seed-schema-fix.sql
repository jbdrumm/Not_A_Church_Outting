-- ================================================================
-- SCHEMA FIX: Add total_score and score_vs_par columns
-- Separate hole_scores (raw), total (gross), and vs_par (differential)
-- ================================================================

-- Add new columns if they don't exist
ALTER TABLE round_scores ADD COLUMN IF NOT EXISTS total_score integer;
ALTER TABLE round_scores ADD COLUMN IF NOT EXISTS score_vs_par integer;

-- ── BACKFILL FROM EXISTING DATA ──────────────────────────────────

-- 1. Records with per-hole data {"1":4,"2":5,...}
--    total_score = sum of all hole values
--    holes_completed = count of hole keys
--    score_vs_par = needs course holes to calculate (done separately)
UPDATE round_scores rs SET
  total_score = (
    SELECT SUM(value::int) FROM jsonb_each_text(rs.hole_scores)
    WHERE key ~ '^[0-9]+$'
  ),
  holes_completed = (
    SELECT COUNT(*) FROM jsonb_each_text(rs.hole_scores)
    WHERE key ~ '^[0-9]+$'
  )
WHERE hole_scores IS NOT NULL
  AND hole_scores ? '1';  -- has per-hole format

-- 2. Records with {"total": N} where is_scramble = true
--    score_vs_par = the total value (already +/-)
--    total_score = NULL (no gross data available historically)
--    holes_completed = 18 (they played a full round)
UPDATE round_scores SET
  score_vs_par = (hole_scores->>'total')::int,
  holes_completed = 18
WHERE hole_scores ? 'total'
  AND is_scramble = true;

-- 3. Records with {"total": N} where is_scramble = false (stroke play historical)
--    total_score = the total value (gross score)
--    holes_completed = 18
UPDATE round_scores SET
  total_score = (hole_scores->>'total')::int,
  holes_completed = 18
WHERE hole_scores ? 'total'
  AND is_scramble = false;

-- 4. Backfill score_vs_par for per-hole stroke play records where course is known
UPDATE round_scores rs SET
  score_vs_par = (
    SELECT SUM(
      (rs.hole_scores->>ch.hole_number::text)::int - ch.par
    )
    FROM course_holes ch
    WHERE ch.course_id = rs.course_id
      AND rs.hole_scores ? ch.hole_number::text
  )
WHERE rs.hole_scores ? '1'
  AND rs.is_scramble = false
  AND rs.course_id IS NOT NULL
  AND rs.holes_completed = 18;

-- Verify
SELECT 
  is_scramble,
  holes_completed,
  COUNT(*) as rows,
  COUNT(total_score) as has_total,
  COUNT(score_vs_par) as has_vs_par
FROM round_scores
GROUP BY is_scramble, holes_completed
ORDER BY is_scramble, holes_completed;
