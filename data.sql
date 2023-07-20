insert into animals 
  (name, date_of_birth, escape_attempts, neutered, weight_kg)
values 
  ('Agumon', '2020-02-03', 0, '1', 10.23),
  ('Gabumon', '2018-11-15', 2, '1', 8),
  ('Pikachu', '2021-01-7', 1, '0', 15.04),
  ('Devimon', '2017-05-12', 5, '1', 11);

insert into animals 
	(name, date_of_birth, escape_attempts, neutered, weight_kg)
values 
	('Charmander', '2020-02-08', 0, '0', -11),
	('Plantmon', '2021-11-15', 2, '1', -5.7),
	('Squirtle', '1993-04-02', 3, '0', -12.13),
	('Angemon', '2005-06-12', 1, '1', -45),
	('Boarmon', '2005-06-07', 7, '1', 20.4),
	('Blossom', '1998-10-13', 3, '1', 17),
	('Ditto', '2022-05-14', 4, '1', 22);

insert into owners
	(full_name, age)
values
	('Sam Smith', 34),
	('Jennifer Orwell', 19),
	('Bob', 45),
	('Melody Pond', 77),
	('Dean Winchester', 14),
	('Jodie Whittaker', 38);
	
insert into species
	(name)
values
	('Pokemon'),
	('Digimon');
	
update animals
set species_id = 2 
where name like '%mon';

update animals
set species_id = 1 
where species_id is null;

update animals
set owners_id = 1
where name = 'Agumon';

update animals
set owners_id = 2
where name = 'Pikachu' or name = 'Gabumon';

update animals
set owners_id = 3
where name = 'Devimon' or name = 'Plantmon';

update animals
set owners_id = 4
where name = 'Charmander' or name = 'Squirtle' or name = 'Blossom';

update animals
set owners_id = 5
where name = 'Angemon' or name = 'Boarmon';
