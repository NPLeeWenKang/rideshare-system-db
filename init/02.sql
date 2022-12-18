-- Insert Sample Data
INSERT INTO passenger(passenger_id, first_name, last_name, mobile_no, email) VALUES
(1, "Wen Kang", "Lee", 11111110, "wenkang@gmail.com"),
(2, "Jia Wei", "Lim", 11111111, "jiawei@gmail.com"),
(3, "Dong En", "Chua", 11111112, "dongen@gmail.com"),
(4, "Xavier", "Ang", 11111113, "xavier@gmail.com"),
(5, "Zane", "Chua", 11111114, "zane@gmail.com");

INSERT INTO driver(driver_id, first_name, last_name, mobile_no, email, id_no, car_no, is_available) VALUES
(1, "Driver 1", "Lee", 88888880, "Diver1@gmail.com", "id1111", "car1111", true),
(2, "Driver 2", "Lim", 88888881, "Diver2@gmail.com", "id2222", "car2222", true),
(3, "Driver 3", "Chua", 88888882, "Diver3@gmail.com", "id3333", "car3333", true),
(4, "Driver 4", "Ang", 88888883, "Diver4@gmail.com", "id4444", "car4444", true),
(5, "Driver 5", "Chua", 88888884, "Diver5@gmail.com", "id55555", "car5555", true);

INSERT INTO trip(trip_id, passenger_id, pick_up, drop_off, start, end) VALUES
(1, 1, "654321", "123456", "2022-02-12 14:19:25", "2022-02-12 14:19:25"),
(2, 1, "123456", "654321", "2022-04-12 14:19:25", null),
(3, 3, "111111", "222222", "2022-04-12 14:19:25", "2022-04-12 14:19:25"),
(4, 1, "111111", "222222", null, null);

INSERT INTO trip_assignment(trip_id, driver_id, status, assign_datetime) VALUES
(1, 1, "REJECTED", "2022-12-14 14:47:40"),
(1, 2, "REJECTED", "2022-12-14 14:47:41"),
(1, 3, "DONE", "2022-12-14 14:47:42"),
(2, 1, "REJECTED", "2022-12-14 14:47:41"),
(2, 4, "DRIVING", "2022-12-14 14:47:42"),
(3, 5, "DONE", "2022-12-14 14:47:42"),
(4, 1, "REJECTED", "2022-12-14 14:47:41"),
(4, 2, "ACCEPTED", "2022-12-14 14:47:42");