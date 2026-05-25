-- ================================================================
-- MANISTEE GOLF & COUNTRY CLUB
-- 500 Cherry St, Manistee MI 49660 — On Lake Michigan bluffs
-- Par 71 (front 36, back 35), Rating 69.0, Slope 128
-- 5,806 yards from white tees
-- NOTE: hole-by-hole data estimated — send scorecard photo to confirm
-- ================================================================

-- Add the course
INSERT INTO courses (name, city, state, par, slope_rating, course_rating)
VALUES ('Manistee Golf & Country Club', 'Manistee', 'MI', 71, 128, 69.0)
ON CONFLICT (name) DO NOTHING;

-- Hole data: par confirmed from course website description
-- Front 9 par 36, Back 9 par 35 (par 71 total)
-- Handicaps ESTIMATED — needs scorecard photo to confirm
-- Yardages estimated from total 5,806 white yards and course descriptions
-- (holes 3,4,12,13,14,15 are on bluff overlooking Lake Michigan)
-- Hole 10 is the longest at 533 yards from back (par 5)
WITH course AS (SELECT id FROM courses WHERE name = 'Manistee Golf & Country Club')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank, yardage_white)
SELECT course.id, h.hole_number, h.par, h.handicap_rank, h.yardage_white
FROM course, (VALUES
-- Hole  Par  Hdcp(est)  White(est)
  (1,  4,  7, 340),
  (2,  4, 13, 310),
  (3,  4,  3, 370),  -- bluff hole, dogleg right
  (4,  4,  1, 390),  -- bluff hole, water hazard
  (5,  3, 17, 160),
  (6,  5, 11, 480),
  (7,  4,  5, 350),  -- OB inside fence
  (8,  4,  9, 330),  -- OB inside fence
  (9,  4, 15, 274),  -- OB inside fence
  (10, 5,  2, 490),  -- longest hole, 533 from back
  (11, 4,  6, 380),
  (12, 4,  4, 360),  -- bluff hole, water hazard
  (13, 4, 10, 330),  -- bluff hole, water hazard
  (14, 4, 14, 310),  -- bluff hole, water hazard
  (15, 4, 16, 290),  -- bluff hole
  (16, 3, 18, 160),  -- water hazard
  (17, 4,  8, 320),
  (18, 3, 12, 118)
) AS h(hole_number, par, handicap_rank, yardage_white)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  par = EXCLUDED.par,
  handicap_rank = EXCLUDED.handicap_rank,
  yardage_white = EXCLUDED.yardage_white;

-- ================================================================
-- UPDATE 2025 EVENT: link Sat AM and Sat PM to Manistee G&CC
-- (Fri AM/PM stays as Hemlock, Sun stays as Stonegate)
-- ================================================================
UPDATE events SET
  saturday_course_id = (SELECT id FROM courses WHERE name = 'Manistee Golf & Country Club')
WHERE year = 2025;

-- ================================================================
-- UPDATE 2025 ROUND SCORES: relink saturday morning rounds to new course
-- ================================================================
UPDATE round_scores SET
  course_id = (SELECT id FROM courses WHERE name = 'Manistee Golf & Country Club')
WHERE event_id = (SELECT id FROM events WHERE year = 2025)
  AND day = 'saturday';

-- Verify
SELECT e.year, rs.day, rs.round_time, c.name as course, COUNT(*) as players
FROM round_scores rs
JOIN events e ON e.id = rs.event_id
JOIN courses c ON c.id = rs.course_id
WHERE e.year = 2025
GROUP BY e.year, rs.day, rs.round_time, c.name
ORDER BY rs.day, rs.round_time;
