BEGIN;

\encoding UNICODE;

-- Movie
-- DELETE FROM movies;
INSERT INTO movies (title, description, director, actors, duration, thumbnail, created_at, updated_at) VALUES ('テストタイトル映画', '説明文説明文説明文説明文説明文説明文', '監督', '出演者', 150, 'サムネイル画像のパス', current_timestamp, current_timestamp);

-- DELETE FROM screens;
-- insert into screens (name, created_at, updated_at) values ("スクリーン1", current_timestamp, current_timestamp);

-- DELETE FROM seats;
-- insert into seats (column, row, created_at, updated_at) values ("A", 1, current_timestamp, current_timestamp);

-- DELETE FROM tickets;
-- insert into tickets (name, price, created_at, updated_at) values ("一般", 1800, current_timestamp, current_timestamp);

COMMIT;