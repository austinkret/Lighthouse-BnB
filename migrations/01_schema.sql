DROP TABLE lightbnb IF EXISTS CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY NOT NULL,
  guest_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255),
  description TEXT,
  thumbnail_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  cost_per_night INT,
  parking_spaces INT,
  number_of_bathrooms INT,
  number_of_bedrooms INT,
  street VARCHAR(255),
  city VARCHAR(255),
  province VARCHAR(255),
  country VARCHAR(255),
  post_code VARCHAR(255),
  active BOOLEAN,
);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY NOT NULL,
  property_id INT NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  property_id INT NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  reservation_id INT NOT NULL REFERENCES reservations(id) ON DELETE CASCADE,
  rating SMALL INT,
  message TEXT
);