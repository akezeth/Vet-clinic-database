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
	invoice_id integer not null foreign key references invoices(id),
	treatment_id integer not null foreign key references treatments(id)
);


create table treatment_histories (
	medical_history_id integer not null foreign key references medical_histories(id),
	treatment_id integer not null foreign key references treatments(id)
);

create index medical_histories_patient_id on medical_histories(patient_id);
create index invoices_medical_history_id on invoices(medical_history_id);
create index invoices_item_invoice_id on invoice_items(invoice_id);
create index invoices_item_treatment_id on invoice_items(treatment_id);
create index treatment_histories_medical_history_id on treatment_histories(medical_history_id);
create index treatment_histories_treatment_id on treatment_histories(treatment_id);





 