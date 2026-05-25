-- ================================================================
-- RE-SEED HISTORICAL SCORES INTO hole_scores JSONB
-- Fixes: historical data was in dropped 'score' column
-- For stroke play: {'total': N} — single key holds gross score
-- For scramble:    {'total': N} — single key holds +/- par value
-- Run in Neon SQL Editor
-- ================================================================

-- First clear the empty hole_scores records from historical events
DELETE FROM round_scores
WHERE is_complete = false
  AND hole_scores = '{}'
  AND event_id IN (SELECT id FROM events WHERE year < 2026);

-- 2018 friday morning [stroke] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 85}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 83}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 97}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Les Wiseman' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 104}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 117}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 113}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Scott Waldron' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Stephen Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 116}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Gene Deruyter' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2018 saturday morning [stroke] @ Lakewood On The Green
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 89}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Kris Kilgore' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Scott Beckett' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Brad Beckett' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Joel Vergouwe' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 104}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Mike Beck' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Eric Rice' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 104}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Gordy Drumm' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 105}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Les Wiseman' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 98}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Paul Jeltema' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 107}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Ken Lodden' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 115}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Jay Lodden' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 112}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Scott Rollenhagen' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 115}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Scott Waldron' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 120}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Stephen Beckett' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 118}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2018 AND p.name = 'Gene Deruyter' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2021 friday morning [stroke] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 86}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Jim Paul' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 85}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 83}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 89}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 102}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Kenny Osbeck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Les Wiseman' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 98}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 101}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 97}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Keith Hinkle' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 101}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 104}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 109}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Scott Waldron' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 114}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Gene Deruyter' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2021 saturday morning [stroke] @ Emerald Vale Golf Course
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 81}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Kris Kilgore' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 86}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Jim Paul' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 87}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Scott Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 89}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Trent Shymanski' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Brad Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Mike Beck' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Adam Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Eric Rice' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Gordy Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Kenny Osbeck' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Jake Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 102}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Paul Jeltema' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 101}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Keith Hinkle' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 105}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Ken Lodden' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 102}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Dave Shymanski' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 108}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Jay Lodden' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 109}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Scott Rollenhagen' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 104}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Scott Waldron' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 108}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Stephen Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 109}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2021 AND p.name = 'Gene Deruyter' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2022 friday morning [stroke] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 83}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 79}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jim Paul' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 88}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 86}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 89}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jason Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 101}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Les Wiseman' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Keith Hinkle' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Ross Maroe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 109}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 105}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 109}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 120}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Stephen Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2022 saturday morning [stroke] @ Emerald Vale Golf Course
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 88}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Kris Kilgore' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jim Paul' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 81}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Scott Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Brad Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Joel Vergouwe' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 87}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Mike Beck' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Adam Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Eric Rice' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Gordy Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jason Vergouwe' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Les Wiseman' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jake Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 101}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Paul Jeltema' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Keith Hinkle' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 100}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Ross Maroe' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Ken Lodden' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Dave Shymanski' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 108}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jay Lodden' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 107}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Scott Rollenhagen' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 108}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Stephen Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2022 saturday afternoon [scramble] @ Emerald Vale Golf Course
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Kris Kilgore' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jim Paul' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Scott Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Brad Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Joel Vergouwe' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Mike Beck' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Adam Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Eric Rice' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Gordy Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jason Vergouwe' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Les Wiseman' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jake Drumm' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Paul Jeltema' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Keith Hinkle' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Ross Maroe' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Ken Lodden' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Dave Shymanski' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jay Lodden' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Scott Rollenhagen' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Stephen Beckett' AND c.name = 'Emerald Vale Golf Course'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2022 sunday morning [scramble] @ Lakewood On The Green
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Kris Kilgore' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jim Paul' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Scott Beckett' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": 1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Brad Beckett' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Joel Vergouwe' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Mike Beck' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Adam Drumm' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": 1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Eric Rice' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Gordy Drumm' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": 1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jason Vergouwe' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jake Drumm' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Paul Jeltema' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Keith Hinkle' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Ken Lodden' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": 1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Dave Shymanski' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Jay Lodden' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2022 AND p.name = 'Scott Rollenhagen' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2023 friday morning [stroke] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 88}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 87}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 83}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 84}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jason Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Les Wiseman' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 100}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 104}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 97}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 100}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 111}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2023 friday afternoon [scramble] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jason Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Les Wiseman' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2023 saturday morning [stroke] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 79}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 85}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jason Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Les Wiseman' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 101}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 105}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 108}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 109}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2023 saturday afternoon [scramble] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jason Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Les Wiseman' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2023 sunday morning [scramble] @ Evergreen Resort Golf
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Kris Kilgore' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Beckett' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Brad Beckett' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Joel Vergouwe' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Mike Beck' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Adam Drumm' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Eric Rice' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Gordy Drumm' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jason Vergouwe' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Les Wiseman' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jake Drumm' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Paul Jeltema' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Ken Lodden' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Dave Shymanski' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Jay Lodden' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2023 AND p.name = 'Scott Rollenhagen' AND c.name = 'Evergreen Resort Golf'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2024 friday morning [stroke] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 82}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 86}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 89}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 97}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Keith Hinkle' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 100}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 116}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 115}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Stephen Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2024 friday afternoon [scramble] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Keith Hinkle' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Stephen Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2024 saturday morning [stroke] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 76}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 85}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 88}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 98}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 100}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Keith Hinkle' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 110}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 95}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 109}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 111}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Stephen Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2024 saturday afternoon [scramble] @ El Dorado Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Kris Kilgore' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Brad Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Joel Vergouwe' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Mike Beck' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Adam Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Eric Rice' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Gordy Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jake Drumm' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Paul Jeltema' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Keith Hinkle' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Ken Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Dave Shymanski' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jay Lodden' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -6}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Rollenhagen' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Stephen Beckett' AND c.name = 'El Dorado Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2024 sunday morning [scramble] @ Lakewood On The Green
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Kris Kilgore' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Beckett' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Brad Beckett' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Joel Vergouwe' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Mike Beck' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Adam Drumm' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Eric Rice' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Gordy Drumm' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jake Drumm' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Paul Jeltema' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Keith Hinkle' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Ken Lodden' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Dave Shymanski' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Jay Lodden' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Scott Rollenhagen' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2024 AND p.name = 'Stephen Beckett' AND c.name = 'Lakewood On The Green'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2025 friday morning [stroke] @ Hemlock Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Kris Kilgore' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jim Paul' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 84}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Beckett' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Joel Vergouwe' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Mike Beck' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 99}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Adam Drumm' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 91}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Gordy Drumm' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jason Vergouwe' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 100}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jake Drumm' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Paul Jeltema' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 98}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Keith Hinkle' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 100}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Ken Lodden' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 97}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Dave Shymanski' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 101}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jay Lodden' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 103}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Rollenhagen' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'morning', false, '{"total": 109}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Stephen Beckett' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2025 friday afternoon [scramble] @ Hemlock Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Kris Kilgore' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jim Paul' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Beckett' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Joel Vergouwe' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Mike Beck' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Adam Drumm' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Gordy Drumm' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jason Vergouwe' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jake Drumm' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Paul Jeltema' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Keith Hinkle' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Ken Lodden' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Dave Shymanski' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jay Lodden' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -1}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Rollenhagen' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'friday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Stephen Beckett' AND c.name = 'Hemlock Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2025 saturday morning [stroke] @ Manistee National - The Retreat
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 85}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Kris Kilgore' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 85}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jim Paul' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 88}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Beckett' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 96}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Joel Vergouwe' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 89}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Mike Beck' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 92}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Adam Drumm' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 86}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Eric Rice' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 90}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Gordy Drumm' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 100}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jason Vergouwe' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 93}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jake Drumm' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 89}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Paul Jeltema' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 102}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Keith Hinkle' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 94}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Ken Lodden' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 102}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Dave Shymanski' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 97}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jay Lodden' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'morning', false, '{"total": 104}'::jsonb, true, 18
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Rollenhagen' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2025 saturday afternoon [scramble] @ Manistee National - The Retreat
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Kris Kilgore' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jim Paul' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Beckett' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Joel Vergouwe' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Mike Beck' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Adam Drumm' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Eric Rice' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Gordy Drumm' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jason Vergouwe' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jake Drumm' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Paul Jeltema' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Keith Hinkle' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -3}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Ken Lodden' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Dave Shymanski' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -5}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jay Lodden' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'saturday', 'afternoon', true, '{"total": -7}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Rollenhagen' AND c.name = 'Manistee National - The Retreat'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- 2025 sunday morning [scramble] @ Stonegate Golf Club
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Kris Kilgore' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jim Paul' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Beckett' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Joel Vergouwe' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": 0}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Mike Beck' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Adam Drumm' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": 0}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Eric Rice' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Gordy Drumm' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": 0}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jason Vergouwe' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jake Drumm' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Paul Jeltema' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -8}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Keith Hinkle' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Ken Lodden' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -2}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Dave Shymanski' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": 0}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Jay Lodden' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;
INSERT INTO round_scores (event_id, player_id, course_id, day, round_time, is_scramble, hole_scores, is_complete, holes_completed)
SELECT e.id, p.id, c.id, 'sunday', 'morning', true, '{"total": -4}'::jsonb, true, 0
FROM events e, players p, courses c
WHERE e.year = 2025 AND p.name = 'Scott Rollenhagen' AND c.name = 'Stonegate Golf Club'
ON CONFLICT (event_id, player_id, course_id, day, round_time)
DO UPDATE SET hole_scores = EXCLUDED.hole_scores, is_complete = true, holes_completed = EXCLUDED.holes_completed;

-- SKIPPED: 2022 Fri PM (intentionally blank per records)

-- Verify
SELECT is_scramble, is_complete, COUNT(*),
  ROUND(AVG((SELECT SUM(value::int) FROM jsonb_each_text(hole_scores))),1) as avg_score
FROM round_scores GROUP BY is_scramble, is_complete ORDER BY is_scramble, is_complete;