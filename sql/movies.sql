BEGIN;

\encoding UNICODE;

DELETE FROM movies;
INSERT INTO movies (title, description, director, actors, duration, thumbnail, created_at, updated_at) VALUES ('テストタイトル映画', '説明文説明文説明文説明文説明文説明文', '監督', '出演者', 150, 'サムネイル画像のパス', current_timestamp, current_timestamp);

COMMIT;