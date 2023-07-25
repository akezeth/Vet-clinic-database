create table patients (
	id integer not null primary key,
	name varchar(100),
	date_of_birth date
);

create table medical_histories (
	id integer not null primary key,
  admitted_at timestamp,
  patient_id not null foreign key references patients(id),
	status varchar(100)
);

create table treatments (
	id integer not null primary key,
  type varchar(100),    
	name varchar(100)
);

create table invoices (
	id integer not null primary key,
	total_amount decimal,
	generated_at timestamp,
	payed_at timestamp,
	medical_history_id not null foreign key references medical_histories(id)
);

create table invoice_items (
	id integer not null primary key,
	unit_price decimal,
	quantity integer,
	total_price decimal,
	invoice_id integer not null foreign key references invoices(id)
);



 