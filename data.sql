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

insert into vets
    (name, age, date_of_graduation)
values
    ('William Tatcher', 45, '2000-04-23'),
    ('Maisy Smith', 26, '2019-01-17'),
    ('Stephanie Mendez', 64, '1981-05-04'),
    ('Jack Harkness', 38, '2008-06-08');

insert into specializations
    (vet_id, species_id)
values
    ((select id from vets where name = 'William Tatcher'),
	 (select id from species where name = 'Pokemon')),
    ((select id from vets where name = 'Stephanie Mendez'),
	 (select id from species where name = 'Digimon')),
    ((select id from vets where name = 'Stephanie Mendez'),
	 (select id from species where name = 'Pokemon')),
    ((select id from vets where name = 'Jack Harkness'),
	 (select id from species where name = 'Digimon'));

insert into visits
    (animal_id, vet_id, visit_date)
values
    ((select id from animals where name = 'Agumon'),
	 (select id from vets where name = 'William Tatcher'), '2020-05-24'),
    ((select id from animals where name = 'Agumon'),
	 (select id from vets where name = 'Stephanie Mendez'), '2020-07-22'),
    ((select id from animals where name = 'Gabumon'),
	 (select id from vets where name = 'Jack Harkness'), '2021-02-02'),
    ((select id from animals where name = 'Pikachu'),
	 (select id from vets where name = 'Maisy Smith'), '2020-01-05'),
    ((select id from animals where name = 'Pikachu'),
	 (select id from vets where name = 'Maisy Smith'), '2020-03-08'),
    ((select id from animals where name = 'Pikachu'),
	 (select id from vets where name = 'Maisy Smith'), '2020-05-14'),
    ((select id from animals where name = 'Devimon'),
	 (select id from vets where name = 'Stephanie Mendez'), '2021-05-04'),
    ((select id from animals where name = 'Charmander'),
	 (select id from vets where name = 'Jack Harkness'), '2021-02-24'),
    ((select id from animals where name = 'Plantmon'),
	 (select id from vets where name = 'Maisy Smith'), '2019-12-21'),
    ((select id from animals where name = 'Plantmon'),
	 (select id from vets where name = 'William Tatcher'), '2020-08-10'),
    ((select id from animals where name = 'Plantmon'),
	 (select id from vets where name = 'Maisy Smith'), '2021-04-07'),
    ((select id from animals where name = 'Squirtle'),
	 (select id from vets where name = 'Stephanie Mendez'), '2019-09-29'),
    ((select id from animals where name = 'Angemon'),
	 (select id from vets where name = 'Jack Harkness'), '2020-10-03'),
    ((select id from animals where name = 'Angemon'),
	 (select id from vets where name = 'Jack Harkness'), '2020-11-04'),
    ((select id from animals where name = 'Boarmon'),
	 (select id from vets where name = 'Maisy Smith'), '2019-01-24'),
    ((select id from animals where name = 'Boarmon'),
	 (select id from vets where name = 'Maisy Smith'), '2019-05-15'),
    ((select id from animals where name = 'Boarmon'),
	 (select id from vets where name = 'Maisy Smith'), '2020-02-27'),
    ((select id from animals where name = 'Boarmon'),
	 (select id from vets where name = 'Maisy Smith'), '2020-08-03'),
    ((select id from animals where name = 'Blossom'),
	 (select id from vets where name = 'Stephanie Mendez'), '2020-05-24'),
    ((select id from animals where name = 'Blossom'),
	 (select id from vets where name = 'William Tatcher'), '2021-01-11');
