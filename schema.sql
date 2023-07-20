create table animals (
	id integer GENERATED ALWAYS AS IDENTITY,
	name varchar(50),
	date_of_birth date,
	escape_attempts integer,
	neutered boolean,
	weight_kg decimal
);

alter table animals 
add species varchar(10);

create table owners(
	id integer GENERATED ALWAYS AS IDENTITY,
	full_name varchar(100),
	age integer,
	primary key(id)
);

create table species(
	id integer GENERATED ALWAYS AS IDENTITY,
	name varchar(50),
	primary key(id)
);

alter table animals
add primary key(id);

alter table animals
drop column species;

alter table animals
add column species_id integer;

alter table animals
add foreign key(species_id)
references species(id)
on delete cascade;

alter table animals
add column owners_id integer;

alter table animals
add foreign key(owners_id)
references owners(id)
on delete cascade;