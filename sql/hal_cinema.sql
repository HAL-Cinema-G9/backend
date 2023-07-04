BEGIN;

\encoding UTF8;

-- Movie
DELETE FROM Movie;
insert into Movie (title, discription, director, actors, during, thumbnail, created_at, updated_at) values ('テストタイトル映画', '説明文説明文説明文説明文説明文説明文', '監督', '出演者', 150, 'サムネイル画像のパス', current_timestamp, current_timestamp);

DELETE FROM Screen;
insert into Screen (name, created_at, updated_at) values ("スクリーン1", current_timestamp, current_timestamp);

DELETE FROM Seat;
insert into Seat (column, row, created_at, updated_at) values ("A", 1, current_timestamp, current_timestamp);

DELETE FROM Ticket;
insert into Ticket (name, price, created_at, updated_at) values ("一般", 1800, current_timestamp, current_timestamp);

COMMIT;