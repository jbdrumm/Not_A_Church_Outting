-- ================================================================
-- FULL YARDAGE UPDATE — All tee boxes from confirmed scorecards
-- Adds yardage_red where available
-- Run in Neon SQL Editor
-- ================================================================

-- ── EL DORADO GOLF CLUB ─────────────────────────────────────────
-- Tees: Steel(black) / Power(blue) / Chrome(white) / Ride / Comfort(red)
WITH course AS (SELECT id FROM courses WHERE name = 'El Dorado Golf Club')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
  yardage_white, yardage_blue, yardage_black, yardage_red)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
  h.chrome, h.power, h.steel, h.comfort
FROM course, (VALUES
-- hole, par, hdcp, chrome(white), power(blue), steel(black), comfort(red)
  (1,  4,  1, 375, 405, 435, 305),
  (2,  4, 15, 315, 338, 353, 245),
  (3,  3, 11, 160, 190, 216,  95),
  (4,  4, 13, 360, 400, 425, 300),
  (5,  4,  5, 375, 418, 436, 295),
  (6,  5,  9, 490, 519, 528, 416),
  (7,  3, 17, 135, 155, 164, 120),
  (8,  5,  3, 455, 462, 490, 391),
  (9,  4,  7, 330, 365, 381, 280),
  (10, 5, 16, 481, 531, 551, 413),
  (11, 4, 12, 366, 396, 426, 292),
  (12, 3, 10, 155, 190, 220, 120),
  (13, 4,  4, 315, 438, 443, 295),
  (14, 4, 14, 325, 340, 391, 287),
  (15, 4,  6, 385, 413, 433, 315),
  (16, 5,  8, 495, 545, 582, 428),
  (17, 3, 18, 155, 168, 173, 101),
  (18, 4,  2, 415, 425, 487, 320)
) AS h(hole_number, par, handicap_rank, chrome, power, steel, comfort)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  yardage_white = EXCLUDED.yardage_white,
  yardage_blue  = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black,
  yardage_red   = EXCLUDED.yardage_red;

-- ── MANISTEE NATIONAL — THE REVENGE (Cutters' Ridge) ────────────
-- Tees: Black / Blue / Blue-White / White / Gold / Gold-Red / Red
WITH course AS (SELECT id FROM courses WHERE name = 'Manistee National - The Revenge')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
  yardage_white, yardage_blue, yardage_black, yardage_red)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
  h.white, h.blue, h.black, h.red
FROM course, (VALUES
  (1,  4,  7, 385, 396, 420, 316),
  (2,  3, 15, 132, 140, 158, 100),
  (3,  4,  5, 355, 391, 408, 282),
  (4,  5,  3, 464, 510, 518, 391),
  (5,  4,  9, 355, 372, 393, 289),
  (6,  5, 13, 495, 512, 543, 436),
  (7,  4,  1, 372, 414, 421, 266),
  (8,  3, 17, 136, 154, 162, 119),
  (9,  4, 11, 321, 390, 415, 260),
  (10, 4, 10, 344, 370, 400, 189),
  (11, 4,  4, 349, 392, 417, 270),
  (12, 3, 14, 149, 187, 187, 115),
  (13, 4,  8, 306, 360, 369, 259),
  (14, 4, 12, 288, 304, 316, 233),
  (15, 3, 18, 175, 181, 191, 115),
  (16, 5, 16, 458, 466, 501, 397),
  (17, 4,  6, 371, 401, 411, 263),
  (18, 4,  2, 364, 381, 402, 271)
) AS h(hole_number, par, handicap_rank, white, blue, black, red)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  yardage_white = EXCLUDED.yardage_white,
  yardage_blue  = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black,
  yardage_red   = EXCLUDED.yardage_red;

-- ── MANISTEE NATIONAL — THE RETREAT (Canthooke Valley) ──────────
-- Tees: Blue / White / White-Gold / Gold / Red
WITH course AS (SELECT id FROM courses WHERE name = 'Manistee National - The Retreat')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
  yardage_white, yardage_blue, yardage_black, yardage_red)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
  h.white, h.blue, h.blue, h.red
FROM course, (VALUES
  (1,  4,  5, 411, 439, 439),
  (2,  4,  7, 353, 389, 282),
  (3,  5,  9, 501, 519, 399),
  (4,  3, 17, 139, 164, 109),
  (5,  4,  1, 436, 447, 289),
  (6,  3, 15, 157, 175,  96),
  (7,  4,  3, 361, 379, 270),
  (8,  5, 11, 499, 517, 413),
  (9,  3, 13, 166, 198, 125),
  (10, 5, 10, 506, 520, 439),
  (11, 4,  6, 373, 386, 318),
  (12, 4,  4, 427, 444, 325),
  (13, 3, 14, 170, 192, 127),
  (14, 4, 18, 322, 340, 238),
  (15, 5, 12, 494, 513, 307),
  (16, 4,  2, 407, 428, 307),
  (17, 3, 16, 121, 143, 108),
  (18, 4,  8, 284, 324, 201)
) AS h(hole_number, par, handicap_rank, white, blue, red)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  yardage_white = EXCLUDED.yardage_white,
  yardage_blue  = EXCLUDED.yardage_blue,
  yardage_red   = EXCLUDED.yardage_red;

-- ── STONEGATE GOLF CLUB ─────────────────────────────────────────
-- Tees: Black / Blue / White / Gold / Red
WITH course AS (SELECT id FROM courses WHERE name = 'Stonegate Golf Club')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
  yardage_white, yardage_blue, yardage_black, yardage_red)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
  h.white, h.blue, h.black, h.red
FROM course, (VALUES
  (1,  4, 17, 309, 316, 344, 287),
  (2,  3, 15, 128, 148, 182,  97),
  (3,  4,  5, 329, 353, 369, 310),
  (4,  5,  9, 424, 465, 490, 378),
  (5,  4,  7, 339, 346, 386, 287),
  (6,  5,  1, 524, 558, 598, 398),
  (7,  3, 13, 153, 171, 220, 140),
  (8,  4,  3, 342, 349, 388, 305),
  (9,  4, 11, 331, 337, 344, 293),
  (10, 4, 16, 239, 304, 318, 186),
  (11, 5,  8, 510, 533, 538, 458),
  (12, 4,  6, 332, 341, 393, 283),
  (13, 4, 10, 320, 374, 392, 311),
  (14, 3, 18, 120, 137, 147,  85),
  (15, 4,  4, 332, 365, 399, 292),
  (16, 4,  2, 395, 409, 413, 334),
  (17, 3, 14, 126, 145, 171,  97),
  (18, 5, 12, 434, 460, 470, 367)
) AS h(hole_number, par, handicap_rank, white, blue, black, red)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  yardage_white = EXCLUDED.yardage_white,
  yardage_blue  = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black,
  yardage_red   = EXCLUDED.yardage_red;

-- ── HEMLOCK GOLF CLUB ───────────────────────────────────────────
-- Tees: Black / Green / Blue / Orange / White / Yellow
-- Using White as yardage_white, Blue as yardage_blue, Black as yardage_black
-- Yellow (shortest) as yardage_red proxy
WITH course AS (SELECT id FROM courses WHERE name = 'Hemlock Golf Club')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
  yardage_white, yardage_blue, yardage_black, yardage_red)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
  h.white, h.blue, h.black, h.yellow
FROM course, (VALUES
-- hole, par, hdcp, white, blue,  black, yellow
  (1,  4,  3, 311, 382, 427, 311),
  (2,  4, 17, 232, 299, 328, 232),
  (3,  4, 15, 197, 263, 298, 132),
  (4,  4,  9, 227, 298, 360, 139),
  (5,  3, 11, 134, 158, 178,  55),
  (6,  5,  5, 393, 526, 552, 336),
  (7,  4,  1, 289, 409, 469, 289),
  (8,  4, 13, 279, 371, 416, 279),
  (9,  4,  7, 309, 386, 432, 309),
  (10, 4, 10, 306, 395, 428, 306),
  (11, 5,  4, 356, 447, 502, 356),
  (12, 5,  2, 432, 506, 585, 353),
  (13, 3, 16, 106, 156, 192, 106),
  (14, 4,  6, 268, 324, 356, 206),
  (15, 3, 18, 100, 138, 158, 100),
  (16, 4,  8, 235, 365, 404, 235),
  (17, 4, 14, 289, 369, 413, 289),
  (18, 4, 12, 300, 370, 403, 300)
) AS h(hole_number, par, handicap_rank, white, blue, black, yellow)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  yardage_white = EXCLUDED.yardage_white,
  yardage_blue  = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black,
  yardage_red   = EXCLUDED.yardage_red;

-- ── EMERALD VALE GOLF COURSE ────────────────────────────────────
-- Tees: Gold / Blue / White / Red
WITH course AS (SELECT id FROM courses WHERE name = 'Emerald Vale Golf Course')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
  yardage_white, yardage_blue, yardage_black, yardage_red)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
  h.white, h.blue, h.gold, h.red
FROM course, (VALUES
-- hole, par, hdcp, white, blue,  gold,  red
  (1,  4, 12, 357, 390, 395, 310),
  (2,  5,  4, 539, 562, 592, 420),
  (3,  4, 14, 297, 314, 357, 285),
  (4,  4,  2, 372, 400, 408, 339),
  (5,  3, 16, 136, 149, 172, 124),
  (6,  4,  8, 358, 384, 391, 332),
  (7,  5, 10, 517, 537, 548, 423),
  (8,  4,  6, 354, 401, 430, 326),
  (9,  3, 18, 149, 155, 165, 123),
  (10, 4,  3, 414, 424, 452, 370),
  (11, 4, 13, 295, 350, 376, 265),
  (12, 3, 17, 108, 138, 153,  77),
  (13, 5, 11, 434, 462, 468, 384),
  (14, 4, 15, 281, 303, 320, 237),
  (15, 4,  9, 314, 335, 342, 291),
  (16, 5,  5, 490, 503, 554, 409),
  (17, 3,  7, 171, 204, 215, 149),
  (18, 4,  1, 385, 414, 447, 355)
) AS h(hole_number, par, handicap_rank, white, blue, gold, red)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  yardage_white = EXCLUDED.yardage_white,
  yardage_blue  = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black,
  yardage_red   = EXCLUDED.yardage_red;

-- ── EVERGREEN RESORT GOLF ───────────────────────────────────────
-- Tees: Blue / White / Red (no black tee data available)
WITH course AS (SELECT id FROM courses WHERE name = 'Evergreen Resort Golf')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
  yardage_white, yardage_blue, yardage_red)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
  h.white, h.blue, h.red
FROM course, (VALUES
  (1,  4,  9, 372, 418, 307),
  (2,  4,  1, 400, 405, 343),
  (3,  3,  5, 187, 192, 168),
  (4,  4,  7, 384, 391, 289),
  (5,  3, 17, 142, 159, 107),
  (6,  4,  3, 388, 393, 282),
  (7,  4, 11, 338, 347, 310),
  (8,  5, 15, 465, 475, 433),
  (9,  4, 13, 346, 355, 258),
  (10, 4, 18, 347, 376, 262),
  (11, 4, 14, 353, 359, 299),
  (12, 4, 10, 361, 384, 278),
  (13, 3, 16, 136, 174, 105),
  (14, 4,  2, 420, 450, 337),
  (15, 5,  8, 447, 504, 414),
  (16, 4,  4, 410, 420, 342),
  (17, 5,  6, 457, 467, 414),
  (18, 3, 12, 141, 169, 129)
) AS h(hole_number, par, handicap_rank, white, blue, red)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  yardage_white = EXCLUDED.yardage_white,
  yardage_blue  = EXCLUDED.yardage_blue,
  yardage_red   = EXCLUDED.yardage_red;

-- ── LAKEWOOD ON THE GREEN ───────────────────────────────────────
-- Tees: Black / Blue / Red (no white tee data from scorecard)
-- Using Blue as yardage_blue, Black as yardage_black, Red as yardage_red
WITH course AS (SELECT id FROM courses WHERE name = 'Lakewood On The Green')
INSERT INTO course_holes (course_id, hole_number, par, handicap_rank,
  yardage_blue, yardage_black, yardage_red)
SELECT course.id, h.hole_number, h.par, h.handicap_rank,
  h.blue, h.black, h.red
FROM course, (VALUES
  (1,  4, 16, 327, 338, 290),
  (2,  4,  4, 369, 402, 327),
  (3,  5,  9, 505, 515, 445),
  (4,  4, 12, 338, 359, 293),
  (5,  4,  2, 382, 395, 287),
  (6,  3, 18, 151, 167, 134),
  (7,  4,  3, 378, 399, 300),
  (8,  3, 14, 155, 180, 136),
  (9,  4,  5, 370, 390, 308),
  (10, 4,  6, 344, 356, 314),
  (11, 4,  7, 376, 385, 269),
  (12, 3, 10, 127, 137, 101),
  (13, 4,  8, 404, 416, 338),
  (14, 5, 15, 475, 483, 391),
  (15, 4,  1, 370, 382, 304),
  (16, 4, 13, 326, 337, 275),
  (17, 3, 17, 130, 136,  97),
  (18, 4, 11, 300, 308, 273)
) AS h(hole_number, par, handicap_rank, blue, black, red)
ON CONFLICT (course_id, hole_number) DO UPDATE SET
  yardage_blue  = EXCLUDED.yardage_blue,
  yardage_black = EXCLUDED.yardage_black,
  yardage_red   = EXCLUDED.yardage_red;
