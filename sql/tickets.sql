BEGIN;

\encoding UNICODE;

DELETE FROM tickets;
INSERT INTO tickets (name, price, created_at, updated_at) VALUES ('一般', 1800, current_timestamp, current_timestamp);
INSERT INTO tickets (name, price, created_at, updated_at) VALUES ('大学生等', 1600, current_timestamp, current_timestamp);
INSERT INTO tickets (name, price, created_at, updated_at) VALUES ('中学、高校', 1400, current_timestamp, current_timestamp);
INSERT INTO tickets (name, price, created_at, updated_at) VALUES ('小学生、幼児', 1000, current_timestamp, current_timestamp);

COMMIT;