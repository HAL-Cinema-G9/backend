BEGIN;

\encoding UNICODE;

-- Movie
-- DELETE FROM movies;
-- INSERT INTO movies (title, description, director, actors, duration, thumbnail, created_at, updated_at) VALUES ('テストタイトル映画', '説明文説明文説明文説明文説明文説明文', '監督', '出演者', 150, 'サムネイル画像のパス', current_timestamp, current_timestamp);

-- DELETE FROM screens;
-- INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン1', current_timestamp, current_timestamp);

-- DELETE FROM seats;
-- INSERT INTO seats (column, row, created_at, updated_at) VALUES ('A', 1, current_timestamp, current_timestamp);

-- DELETE FROM tickets;
-- INSERT INTO tickets (name, price, created_at, updated_at) VALUES ('一般', 1800, current_timestamp, current_timestamp);
-- INSERT INTO tickets (name, price, created_at, updated_at) VALUES ('大学生等', 1600, current_timestamp, current_timestamp);
-- INSERT INTO tickets (name, price, created_at, updated_at) VALUES ('中学、高校', 1400, current_timestamp, current_timestamp);
-- INSERT INTO tickets (name, price, created_at, updated_at) VALUES ('小学生、幼児', 1000, current_timestamp, current_timestamp);

COMMIT;