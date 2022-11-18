CREATE TABLE contract (
	id_contract SERIAL PRIMARY KEY,
	parcel_value DECIMAL NOT NULL,
	qt_parcels INTEGER NOT NULL
	
);

CREATE TABLE person (
	id_person SERIAL PRIMARY KEY,
	person_name VARCHAR(50) NOT NULL,
	contract INTEGER REFERENCES contract(id_contract),
	overdue BOOLEAN NOT NULL,
	dt_complete DATE
);

CREATE TABLE payment (
	id_payment SERIAL PRIMARY KEY,
	person SERIAL REFERENCES person(id_person),
	dt_payment DATE NOT NULL
	
);

INSERT INTO contract (parcel_value, qt_parcels)
VALUES 	(150, 100),
		(300, 48),
		(550, 24),
		(1000, 12);


INSERT INTO person (person_name, contract, overdue)
VALUES 	('Cristian Ghyprievy', 2, true),
		('Joana Cabel', 1, true),
		('John Serial', 3, true);


INSERT INTO person (person_name, contract, overdue, dt_complete)
VALUES ('Micheal Seven', 2, false, '2021-09-25');


INSERT INTO payment (person, dt_payment)
VALUES 	(4, '2021-09-01'),
		(3, '2021-09-05'),
		(1, '2021-09-19'),
		(2, '2021-09-25');