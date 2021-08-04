CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	email VARCHAR(50),
	membership BOOLEAN
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(40),
	rating INTEGER,
	description VARCHAR(100),
	screening DATE DEFAULT CURRENT_DATE
);

CREATE TABLE concession(
	order_number SERIAL PRIMARY KEY,
	price NUMERIC(5,2),
	payment_method VARCHAR(50),
	inventory INTEGER,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	price NUMERIC(4,2),
	movie_room INTEGER,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);