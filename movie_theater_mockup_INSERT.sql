INSERT INTO customer(
	email,
	membership
) VALUES(
	'koki@koki.com',
	TRUE
);

SELECT *
FROM customer

INSERT INTO customer(
	email,
	membership
) VALUES(
	'hello@hello.com',
	FALSE
);

----------------------------

INSERT INTO movies(
	movie_title,
	rating,
	description
) VALUES(
	'ICE AGE',
	5,
	'A sloth named Sid, a woolly mammoth named Manny, and a saber-toothed tiger named Diego'
);

SELECT *
FROM movies

INSERT INTO movies(
	movie_title,
	rating,
	description
) VALUES(
	'MEN IN BLACK',
	4,
	'While investigating a series of unregistered close encounters, the MIB agents uncover..'
);

--------------------------

INSERT INTO concession(
	price,
	payment_method,
	inventory,
	customer_id
) VALUES(
	23.80,
	'VISA MASTERCARD',
	30,
	1
);

SELECT * 
FROM concession

INSERT INTO concession(
	price,
	payment_method,
	inventory,
	customer_id
) VALUES(
	12.30,
	'PAYPAL',
	10,
	2
);

------------------------

INSERT INTO tickets(
	price,
	movie_room,
	customer_id,
	movie_id
) VALUES(
	12.00,
	21,
	1,
	1
);

SELECT *
FROM tickets

INSERT INTO tickets(
	price,
	movie_room,
	customer_id,
	movie_id
) VALUES(
	5.00,
	8,
	2,
	2
);