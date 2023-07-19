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
