select *
from animals
where name like '%mon';

select name
from animals
where date_of_birth >= '2016-01-01' and date_of_birth <= '2019-12-31';

select name
from animals
where neutered = '1' and escape_attempts < 3;

select date_of_birth
from animals
where name = 'Agumon' or name= 'Pikachu';

select name, escape_attempts
from animals
where weight_kg > 10.5;

select *
from animals
where neutered = '1';

select *
from animals
where name != 'Gabumon';

select *
from animals
where weight_kg between 10.4 and 17.3;

begin;

	update animals
	set species = 'digimon'
	where name like '%mon';
	
	update animals
	set species = 'pokemon'
	where species is null;
	
	select * from animals;
	
commit;

select * from animals;

begin;

	delete from animals;
	
	rollback;
	
	select * from animals;

commit;

begin;

	delete from animals 
	where date_of_birth > '2022-01-01';
	savepoint sp1;
	
	update animals 
	set weight_kg = weight_kg * -1;
	
	rollback to sp1;
	
	update animals 
	set weight_kg = weight_kg * -1 
	where weight_kg < 0;
	
	select * from animals;
	
commit;

select count(name)
from animals;

select count(name)
from animals
where escape_attempts = 0;

select avg(weight_kg)
from animals;

select neutered, avg(escape_attempts) as Average_Escape_Attempts
from animals
group by neutered
order by Average_Escape_Attempts desc;

select species, min(weight_kg), max(weight_kg)
from animals
group by species;

select species, avg(escape_attempts) as Average_Escape_Attempts
from animals
where date_of_birth between '1990-01-01' and '2000-12-31'
group by species;

select animals.name
from animals join owners on animals.owners_id = owners.id
where owners.full_name like 'Melody Pond';

select animals.name 
from animals join species on animals.species_id = species.id
where species.name like 'Pokemon';

select owners.full_name as Owners_name, animals.name as Animal_name
from animals full outer join owners on animals.owners_id = owners.id;

select species.name, count(animals.name)
from animals join species on animals.species_id = species.id
group by species.name;

select animals.name, owners.full_name
from animals
    join species on species.id = animals.species_id
    join owners on animals.owners_id = owners.id
where species.name like 'Digimon' and owners.full_name like 'Jennifer Orwell';

select animals.name, owners.full_name
from animals join owners on animals.owners_id = owners.id
where owners.full_name like 'Dean Winchester' and animals.escape_attempts = 0;

select owners.full_name, count(animals.id) as num_of_animals
from owners join animals on animals.owners_id = owners.id
group by owners.id
order by num_of_animals desc
limit 1;
