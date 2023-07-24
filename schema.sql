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

create table vets(
	id integer GENERATED ALWAYS AS IDENTITY primary key,
	name varchar(100),
	age integer,
	date_of_graduation date
);

create table specializations(
	vet_id integer,
	species_id integer,
	primary key (vet_id, species_id),
	foreign key (vet_id) references vets(id) on delete cascade,
	foreign key (species_id) references species(id) on delete cascade
);

create table visits(
	animal_id integer,
	vet_id integer,
	visit_date date,
	species_id integer,
	primary key (animal_id, vet_id, visit_date),
	foreign key (animal_id) references animals(id) on delete cascade,
	foreign key (vet_id) references vets(id) on delete cascade
);

vet_clinics=# ALTER TABLE owners ADD COLUMN email VARCHAR(120);
