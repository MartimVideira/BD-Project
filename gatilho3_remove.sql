.mode column
.headers ON
.nullvalue NULL

DROP TRIGGER IF EXISTS inserting_in_view_1_raises_if_team_doesnt_exist;
DROP TRIGGER IF EXISTS inserting_in_view_2_creates_match_if_doesnt_exist;
DROP TRIGGER IF EXISTS inserting_in_view_3_inserts_into_participation;