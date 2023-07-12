BEGIN;

\encoding UNICODE;

INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 1, 1, '2023-07-12 10:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 2, 1, '2023-07-12 13:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 3, 1, '2023-07-12 16:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 4, 1, '2023-07-12 19:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 7, 2, '2023-07-12 13:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 19, 3, '2023-07-12 16:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 11, 4, '2023-07-12 19:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 13, 5, '2023-07-12 11:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 17, 5, '2023-07-12 15:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 15, 6, '2023-07-12 14:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 5, 6, '2023-07-12 11:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 7, 7, '2023-07-12 10:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 10, 7, '2023-07-12 13:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 11, 7, '2023-07-12 16:50:00', current_timestamp, current_timestamp);
INSERT INTO schedules (movie_id, screen_id, date, created_at, updated_at) VALUES ( 8, 8, '2023-07-12 15:50:00', current_timestamp, current_timestamp);
COMMIT;