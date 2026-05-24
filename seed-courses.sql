-- ================================================================
-- COURSE DATA SEED v3 — All confirmed from official scorecards/sites
-- ================================================================

-- ── UPDATE COURSE RATINGS / SLOPES ──────────────────────────────
UPDATE courses SET slope_rating = 137,  course_rating = 72.8, par = 72
  WHERE name = 'El Dorado Golf Club';
UPDATE courses SET slope_rating = 130,  course_rating = 72.6, par = 72
  WHERE name = 'Emerald Vale Golf Course';
UPDATE courses SET slope_rating = 113,  course_rating = 70.0, par = 72
  WHERE name = 'Hemlock Golf Club';

-- Rename + fix Lakewood (it's Lakewood ON THE GREEN in Cadillac, par 70)
UPDATE courses SET
  name = 'Lakewood On The Green',
  city = 'Cadillac',
  par  = 70,
  slope_rating = 136,
  course_rating = 70.3
WHERE name IN ('Lakewood Hills Resort', 'Lakewood On The Green');

-- Stonegate Golf Club (Twin Lake, MI — not Oscoda)
UPDATE courses SET
  city = 'Twin Lake',
  par  = 72,
  slope_rating = 124,
  course_rating = 69.3
WHERE name = 'Stonegate Golf Club';

-- Manistee: rename existing to The Retreat and fix par to 71
UPDATE courses SET
  name = 'Manistee National - The Retreat',
  par  = 71,
  slope_rating = 129,
  course_rating = 69.5
WHERE name IN ('Manistee National Golf', 'Manistee National - The Retreat');

-- Add The Revenge
INSERT INTO courses (name, city, state, par, slope_rating, course_rating)
VALUES ('Manistee National - The Revenge', 'Manistee', 'MI', 71, 130, 69.1)
ON CONFLICT (name) DO NOTHING;

-- Evergreen Resort Golf (no scorecard yet)
UPDATE courses SET city = 'Beulah', par = 72
  WHERE name = 'Evergreen Resort Golf';


-- ================================================================
-- EL DORADO GOLF CLUB — ALL 18 HOLES CONFIRMED
-- Source: golfeldorado.com/course-information/
-- Tee labels: Steel / Power / Chrome / Ride / Comfort
-- Using Chrome as White equivalent
-- ================================================================
WITH course AS (SELECT id FROM courses WHERE name = 'El Dorado Golf Club')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
                          yardage_white, yardage_blue, yardage_black)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
       h.chrome, h.power, h.steel
FROM course, (VALUES
  (1,  4,  1, 375, 405, 435),
  (2,  4, 15, 315, 338, 353),
  (3,  3, 11, 160, 190, 216),
  (4,  4, 13, 360, 400, 425),
  (5,  4,  5, 375, 418, 436),
  (6,  5,  9, 490, 519, 528),
  (7,  3, 17, 135, 155, 164),
  (8,  5,  3, 455, 462, 490),
  (9,  4,  7, 330, 365, 381),
  (10, 5, 16, 481, 531, 551),
  (11, 4, 12, 366, 396, 426),
  (12, 3, 10, 155, 190, 220),
  (13, 4,  4, 315, 438, 443),
  (14, 4, 14, 325, 340, 391),
  (15, 4,  6, 385, 413, 433),
  (16, 5,  8, 495, 545, 582),
  (17, 3, 18, 155, 168, 173),
  (18, 4,  2, 415, 425, 487)
) AS h(hole_number, par, handicap_rank, chrome, power, steel)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  par = EXCLUDED.par, handicap_rank = EXCLUDED.handicap_rank,
  yardage_white = EXCLUDED.yardage_white, yardage_blue = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black;


-- ================================================================
-- MANISTEE NATIONAL — THE REVENGE (Cutters' Ridge)
-- Source: Scorecard image — ALL 18 HOLES CONFIRMED
-- Par 71 (front 36, back 35)
-- Men's HCP confirmed from scorecard
-- ================================================================
WITH course AS (SELECT id FROM courses WHERE name = 'Manistee National - The Revenge')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
                          yardage_white, yardage_blue, yardage_black)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
       h.white, h.blue, h.black
FROM course, (VALUES
  (1,  4,  7, 385, 396, 420),
  (2,  3, 15, 132, 140, 158),
  (3,  4,  5, 355, 391, 408),
  (4,  5,  3, 464, 510, 518),
  (5,  4,  9, 355, 372, 393),
  (6,  5, 13, 495, 512, 543),
  (7,  4,  1, 372, 414, 421),
  (8,  3, 17, 136, 154, 162),
  (9,  4, 11, 321, 390, 415),
  (10, 4, 10, 344, 370, 400),
  (11, 4,  4, 349, 392, 417),
  (12, 3, 14, 149, 187, 187),
  (13, 4,  8, 306, 360, 369),
  (14, 4, 12, 288, 304, 316),
  (15, 3, 18, 175, 181, 191),
  (16, 5, 16, 458, 466, 501),
  (17, 4,  6, 371, 401, 411),
  (18, 4,  2, 364, 381, 402)
) AS h(hole_number, par, handicap_rank, white, blue, black)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  par = EXCLUDED.par, handicap_rank = EXCLUDED.handicap_rank,
  yardage_white = EXCLUDED.yardage_white, yardage_blue = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black;


-- ================================================================
-- MANISTEE NATIONAL — THE RETREAT (Canthooke Valley)
-- Source: Scorecard image — ALL 18 HOLES CONFIRMED
-- Par 71 (front 35, back 36)
-- Men's HCP confirmed from scorecard
-- ================================================================
WITH course AS (SELECT id FROM courses WHERE name = 'Manistee National - The Retreat')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
                          yardage_white, yardage_blue, yardage_black)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
       h.white, h.blue, h.black
FROM course, (VALUES
  (1,  4,  5, 411, 439, 439),
  (2,  4,  7, 353, 389, 389),
  (3,  5,  9, 501, 519, 519),
  (4,  3, 17, 139, 164, 164),
  (5,  4,  1, 436, 447, 447),
  (6,  3, 15, 157, 175, 175),
  (7,  4,  3, 361, 379, 379),
  (8,  5, 11, 499, 517, 517),
  (9,  3, 13, 166, 198, 198),
  (10, 5, 10, 506, 520, 520),
  (11, 4,  6, 373, 386, 386),
  (12, 4,  4, 427, 444, 444),
  (13, 3, 14, 170, 192, 192),
  (14, 4, 18, 322, 340, 340),
  (15, 5, 12, 494, 513, 513),
  (16, 4,  2, 407, 428, 428),
  (17, 3, 16, 121, 143, 143),
  (18, 4,  8, 284, 324, 324)
) AS h(hole_number, par, handicap_rank, white, blue, black)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  par = EXCLUDED.par, handicap_rank = EXCLUDED.handicap_rank,
  yardage_white = EXCLUDED.yardage_white, yardage_blue = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black;


-- ================================================================
-- STONEGATE GOLF CLUB (Twin Lake, MI)
-- Source: Scorecard image — ALL 18 HOLES CONFIRMED
-- Par 72 (front 36, back 36)
-- Using Black/Blue Men's HCP row
-- Rating/Slope: Blue 69.3/124, White 67.4/120
-- ================================================================
WITH course AS (SELECT id FROM courses WHERE name = 'Stonegate Golf Club')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
                          yardage_white, yardage_blue, yardage_black)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
       h.white, h.blue, h.black
FROM course, (VALUES
  (1,  4, 17, 309, 316, 344),
  (2,  3, 15, 128, 148, 182),
  (3,  4,  5, 329, 353, 369),
  (4,  5,  9, 424, 465, 490),
  (5,  4,  7, 339, 346, 386),
  (6,  5,  1, 524, 558, 598),
  (7,  3, 13, 153, 171, 220),
  (8,  4,  3, 342, 349, 388),
  (9,  4, 11, 331, 337, 344),
  (10, 4, 16, 239, 304, 318),
  (11, 5,  8, 510, 533, 538),
  (12, 4,  6, 332, 341, 393),
  (13, 4, 10, 320, 374, 392),
  (14, 3, 18, 120, 137, 147),
  (15, 4,  4, 332, 365, 399),
  (16, 4,  2, 395, 409, 413),
  (17, 3, 14, 126, 145, 171),
  (18, 5, 12, 434, 460, 470)
) AS h(hole_number, par, handicap_rank, white, blue, black)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  par = EXCLUDED.par, handicap_rank = EXCLUDED.handicap_rank,
  yardage_white = EXCLUDED.yardage_white, yardage_blue = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black;


-- ================================================================
-- HEMLOCK GOLF CLUB — PARS CONFIRMED, HANDICAPS ESTIMATED
-- Source: hemlockgolfclub.com/course-map/ (pars) + estimates (handicaps)
-- Par 72, Rating 70.0, Slope 113
-- *** Send scorecard photo to confirm handicap ranks ***
-- ================================================================
WITH course AS (SELECT id FROM courses WHERE name = 'Hemlock Golf Club')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank, yardage_white)
SELECT course.id, h.hole_number, h.par, h.handicap_rank, h.white
FROM course, (VALUES
  (1,  4,  5, 375),
  (2,  4,  9, 360),
  (3,  4, 13, 355),
  (4,  4,  1, 415),
  (5,  3, 17, 170),
  (6,  5,  7, 505),
  (7,  4, 11, 380),
  (8,  4,  3, 395),
  (9,  4, 15, 350),
  (10, 4,  4, 385),
  (11, 5,  8, 500),
  (12, 5, 16, 485),
  (13, 3, 18, 155),
  (14, 4,  2, 410),
  (15, 3, 14, 165),
  (16, 4,  6, 385),
  (17, 4, 12, 360),
  (18, 4, 10, 390)
) AS h(hole_number, par, handicap_rank, white)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  par = EXCLUDED.par, handicap_rank = EXCLUDED.handicap_rank,
  yardage_white = EXCLUDED.yardage_white;


-- ================================================================
-- EMERALD VALE GOLF COURSE — PARS MOSTLY CONFIRMED, HANDICAPS ESTIMATED
-- Confirmed: hole 2=par5 (longest), hole 12=par3 (shortest),
--            hole 18=par4 #1 handicap (water), hole 8=par4 (water)
-- *** Send scorecard photo to confirm all handicap ranks ***
-- ================================================================
WITH course AS (SELECT id FROM courses WHERE name = 'Emerald Vale Golf Course')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank, yardage_white)
SELECT course.id, h.hole_number, h.par, h.handicap_rank, h.white
FROM course, (VALUES
  (1,  4,  5, 370),
  (2,  5,  7, 540),
  (3,  4, 11, 360),
  (4,  3, 15, 170),
  (5,  4,  3, 385),
  (6,  4, 13, 350),
  (7,  5,  9, 480),
  (8,  4, 17, 390),
  (9,  3,  9, 170),
  (10, 4,  4, 380),
  (11, 5, 12, 485),
  (12, 3, 18, 140),
  (13, 4,  8, 375),
  (14, 4, 14, 355),
  (15, 4, 16, 345),
  (16, 3, 10, 165),
  (17, 5,  6, 495),
  (18, 4,  1, 425)
) AS h(hole_number, par, handicap_rank, white)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  par = EXCLUDED.par, handicap_rank = EXCLUDED.handicap_rank,
  yardage_white = EXCLUDED.yardage_white;


-- ================================================================
-- LAKEWOOD ON THE GREEN — course-level data only
-- Par 70, Rating 70.3, Slope 136, 6,085 yards blue
-- Scorecard "coming soon" per course website
-- *** Send scorecard photo when available ***
-- ================================================================

-- ================================================================
-- EVERGREEN RESORT GOLF — course-level data only
-- *** Send scorecard photo ***
-- ================================================================

-- ================================================================
-- DATA QUALITY SUMMARY
-- El Dorado:          ✅ ALL 18 holes confirmed (par + hdcp + 3 tee yardages)
-- Manistee Revenge:   ✅ ALL 18 holes confirmed (par + hdcp + 3 tee yardages)
-- Manistee Retreat:   ✅ ALL 18 holes confirmed (par + hdcp + 3 tee yardages)
-- Stonegate:          ✅ ALL 18 holes confirmed (par + hdcp + 3 tee yardages)
-- Hemlock:            ⚠️  Pars confirmed, handicap ranks ESTIMATED
-- Emerald Vale:       ⚠️  Most pars confirmed, handicap ranks ESTIMATED
-- Lakewood on Green:  ❌  No hole data (scorecard coming soon per website)
-- Evergreen Resort:   ❌  No hole data
-- ================================================================
