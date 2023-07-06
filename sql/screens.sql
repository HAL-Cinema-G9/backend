BEGIN;

\encoding UNICODE;

DELETE FROM screens;
INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン1(大)', current_timestamp, current_timestamp);
INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン2(大)', current_timestamp, current_timestamp);
INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン3(大)', current_timestamp, current_timestamp);
INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン4(中)', current_timestamp, current_timestamp);
INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン5(中)', current_timestamp, current_timestamp);
INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン6(小)', current_timestamp, current_timestamp);
INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン7(小)', current_timestamp, current_timestamp);
INSERT INTO screens (name, created_at, updated_at) VALUES ('スクリーン8(小)', current_timestamp, current_timestamp);

COMMIT;