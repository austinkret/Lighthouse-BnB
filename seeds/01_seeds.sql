INSERT INTO users (name, email, password)
VALUES ('Thanos', 'iaminevitable@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('T Challa', 'wakanda4eva@protonmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Thor Odinson', 'thestrongestavengers@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Bruce Banner', 'iamalwaysangry@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Groot', 'iamgroot@iamgroot.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Steve Rogers', 'iheartpeggy@snailmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Paradise At Half Capacity', 'This place will always have half the rooms empty, this universe is over-populated', 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/a/ab/Thanos_on_Titan_%28Illusioned%29.png/revision/latest?cb=20210112015744', 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/a/ab/Thanos_on_Titan_%28Illusioned%29.png/revision/latest?cb=20210112015744', 1000, 10, 15, 20, 'Titan', 'Titan Road', 'Titan City', 'Titan Province', 'TH4 N0S', true),
(2, 'Royal Palace of Wakanda', 'Welcome friends, to the land of Wakanda', 'https://nypost.com/wp-content/uploads/sites/2/2019/12/wakanda-usda.jpg?quality=80&strip=all', 'https://nypost.com/wp-content/uploads/sites/2/2019/12/wakanda-usda.jpg?quality=80&strip=all', 50, 5, 4, 4, 'Wakanda', 'Main Street', 'Birnin Zana', 'Central Wakanda', 'W4K 4EV', true),
(6, 'Caps Humble Abode', 'Just a kid from Brooklyn looking to make rent in Washington', 'https://64.media.tumblr.com/0bf28c1fb844fe475ef1b2c5e623eab5/tumblr_inline_oi88psvIt51rsvnmp_540.png', 'https://64.media.tumblr.com/0bf28c1fb844fe475ef1b2c5e623eab5/tumblr_inline_oi88psvIt51rsvnmp_540.png', 20, 0, 1, 1, 'USA', 'Pennsylvania Avenue', 'Washington DC', 'Washington DC', '20500-0003', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-07-11', '2021-09-26', 1, 5),
('2021-10-01', '2021-10-14', 2, 6),
('2022-01-04', '2022-02-01', 2, 1),
('2021-05-15', '2021-09-30', 3, 3),
('2023-01-03', '2023-04-18', 1, 2),
('2023-01-03', '2023-04-18', 3, 4);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (5, 1, 1, 1, 'It was not at all like the pictures, host destroyed everything'),
(4, 3, 4, 4, 'Very cozy, but only one bedroom to close quarters, felt very safe with Steve though!'),
(1, 2, 2, 3, 'Good, but too many people. They hsould be wiped out.');