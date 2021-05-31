create table Emp_Bank (
	uuid_ VARCHAR(75) null,
	bank_id LONG not null primary key,
	name VARCHAR(75) null,
	bik VARCHAR(75) null,
	address VARCHAR(75) null
);

create table Emp_Banks_Employees (
	bank_id LONG not null,
	employee_id LONG not null,
	primary key (bank_id, employee_id)
);

create table Emp_Employee (
	uuid_ VARCHAR(75) null,
	employee_id LONG not null primary key,
	name VARCHAR(75) null,
	patronymic VARCHAR(75) null,
	surname VARCHAR(75) null,
	gender VARCHAR(75) null,
	birth_date DATE null,
	date_of_employment DATE null,
	salary INTEGER,
	work_phone VARCHAR(75) null,
	mobile_phone VARCHAR(75) null,
	archive BOOLEAN,
	position_id LONG
);

create table Emp_Position (
	uuid_ VARCHAR(75) null,
	position_id LONG not null primary key,
	name VARCHAR(75) null,
	archive BOOLEAN,
	employee_id LONG
);