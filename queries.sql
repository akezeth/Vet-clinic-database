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
