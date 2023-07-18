create table animals (
	id integer GENERATED ALWAYS AS IDENTITY,
	name varchar(50),
	date_of_birth date,
	escape_attempts integer,
	neutered boolean,
	weight_kg decimal
);
