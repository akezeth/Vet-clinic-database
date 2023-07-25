create table patients (
	id integer not null primary key,
	name varchar(100),
	date_of_birth date,	 
);

create table medical_histories (
	id integer not null primary key,
    admitted_at timestamp,
    patient_id not null foreign key references patients(id),
	status varchar(100),	 
);

 