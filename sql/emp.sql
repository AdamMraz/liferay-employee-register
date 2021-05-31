-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emp_bank" (
    "uuid_" varchar,
    "bank_id" int8 NOT NULL,
    "name" varchar,
    "bik" varchar,
    "address" varchar,
    PRIMARY KEY ("bank_id")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emp_banks_employees" (
    "bank_id" int8 NOT NULL,
    "employee_id" int8 NOT NULL,
    PRIMARY KEY ("bank_id","employee_id"),
    UNIQUE(employee_id)
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emp_employee" (
    "uuid_" varchar,
    "employee_id" int8 NOT NULL,
    "name" varchar,
    "patronymic" varchar,
    "surname" varchar,
    "gender" varchar,
    "birth_date" date,
    "date_of_employment" date,
    "salary" int4,
    "work_phone" varchar,
    "mobile_phone" varchar,
    "archive" bool,
    "position_id" int8,
    PRIMARY KEY ("employee_id")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emp_position" (
    "uuid_" varchar,
    "position_id" int8 NOT NULL,
    "name" varchar,
    "archive" bool,
    "employee_id" int8,
    PRIMARY KEY ("position_id")
);

INSERT INTO "public"."emp_bank" ("uuid_", "bank_id", "name", "bik", "address") VALUES
('222fa59a-753b-4246-aa8b-57c9d63f7f74', 1, 'Сбербанк', '658625', 'Новосибирск, Ленина 1');
INSERT INTO "public"."emp_bank" ("uuid_", "bank_id", "name", "bik", "address") VALUES
('75cf5372-b902-4cf5-bf23-c78d1b38da51', 2, 'Тинькофф', '254863', 'Новосибирск, Советская 18');
INSERT INTO "public"."emp_bank" ("uuid_", "bank_id", "name", "bik", "address") VALUES
('6a02c1ad-8886-408d-97c0-40257683f7db', 3, 'ВТБ', '853698', 'Москва, Фрунзе 152');
INSERT INTO "public"."emp_bank" ("uuid_", "bank_id", "name", "bik", "address") VALUES
('7fecee28-501d-447e-8c4d-982e4998c58b', 4, 'Почта банк', '526812', 'Екатеринбург, Ломоносова 23'),
('b3228577-fdae-4808-8027-3ea79dd12c50', 5, 'Альфа', '852468', 'Кемерово, Ленина 16'),
('f01eb40b-5df1-4699-aa06-c8f63c454e9e', 6, 'Левобережный', '852398', 'Москва, Аникина 34');

INSERT INTO "public"."emp_banks_employees" ("bank_id", "employee_id") VALUES
(5, 1);
INSERT INTO "public"."emp_banks_employees" ("bank_id", "employee_id") VALUES
(1, 2);
INSERT INTO "public"."emp_banks_employees" ("bank_id", "employee_id") VALUES
(2, 3);
INSERT INTO "public"."emp_banks_employees" ("bank_id", "employee_id") VALUES
(3, 4),
(6, 5),
(3, 6),
(1, 101),
(5, 102);

INSERT INTO "public"."emp_employee" ("uuid_", "employee_id", "name", "patronymic", "surname", "gender", "birth_date", "date_of_employment", "salary", "work_phone", "mobile_phone", "archive", "position_id") VALUES
('2b760ed6-f4b0-4059-a1c9-f3a8be0b4f83', 5, 'Лариса', 'Егоровна', 'Губко', 'Female', '1983-05-23', '2018-10-17', 51000, '+79145268563', '+79584523212', 'f', 10);
INSERT INTO "public"."emp_employee" ("uuid_", "employee_id", "name", "patronymic", "surname", "gender", "birth_date", "date_of_employment", "salary", "work_phone", "mobile_phone", "archive", "position_id") VALUES
('7e1186e4-11e4-48d9-9096-b0de474e9792', 1, 'Иван', 'Иванович', 'Иванов', 'Male', '1976-05-03', '2011-11-01', 500000, '+79232273337', '+79232273336', 'f', 1);
INSERT INTO "public"."emp_employee" ("uuid_", "employee_id", "name", "patronymic", "surname", "gender", "birth_date", "date_of_employment", "salary", "work_phone", "mobile_phone", "archive", "position_id") VALUES
('9c8ea187-f421-4328-9249-67448f9d6252', 4, 'Софья', 'Павловна', 'Молодина', 'Female', '1996-08-30', '2020-07-08', 45000, '', '+79625463625', 'f', 9);
INSERT INTO "public"."emp_employee" ("uuid_", "employee_id", "name", "patronymic", "surname", "gender", "birth_date", "date_of_employment", "salary", "work_phone", "mobile_phone", "archive", "position_id") VALUES
('349817fa-f0ff-4ecc-9ebb-9940bba9c084', 2, 'Сергей', 'Андреевич', 'Иванов', 'Male', '1965-08-02', '2015-06-05', 25000, '+76257622565', '+79625468523', 'f', 2),
('78ef4b54-526e-40c7-9622-5edcb75f914b', 3, 'Александр', 'Антонович', 'Петров', 'Male', '1999-07-23', '2021-05-30', 27000, '+79652584682', '+79584632584', 'f', 7),
('710ed35c-f6e9-4d13-acdc-f246e7beac16', 101, 'Игорь', 'Андреевич', 'Иванов', 'Male', '1983-02-16', '2019-10-10', 31000, '', '+79523655874', 'f', 6),
('dbf2cbea-950a-4e56-8cca-9aa50df801f0', 102, 'Ирина', 'Анатольевна', 'Артемьева', 'Female', '1986-12-09', '2017-12-04', 38000, '', '+79663584625', 'f', 8),
('7a268e0a-a47c-4451-a2d6-2d056e059770', 6, 'Мария', 'Владимировна', 'Белецкая', 'Female', '1971-12-15', '2019-09-24', 23000, '', '+79584256235', 't', 4);

INSERT INTO "public"."emp_position" ("uuid_", "position_id", "name", "archive", "employee_id") VALUES
('2036c972-c274-4273-8e95-c34cefa036c0', 3, 'Дворник', 'f', -1);
INSERT INTO "public"."emp_position" ("uuid_", "position_id", "name", "archive", "employee_id") VALUES
('bc3905c5-71eb-4a19-8219-ccacee44b70e', 5, 'Уборщица', 'f', -1);
INSERT INTO "public"."emp_position" ("uuid_", "position_id", "name", "archive", "employee_id") VALUES
('ef7475e9-0c55-45bf-833d-d4cf991dd96d', 2, 'Дворник', 'f', 2);
INSERT INTO "public"."emp_position" ("uuid_", "position_id", "name", "archive", "employee_id") VALUES
('34a49e9e-f19b-4821-8eb3-557cdf04c460', 10, 'Менеджер', 'f', 5),
('82ed5b59-9fa1-4c1c-9987-b7de8ec23317', 4, 'Уборщица', 'f', 6),
('d4f41943-8a5a-431f-b23e-034e8cdb82d0', 1, 'Директор', 'f', 1),
('b3c742bb-6b19-4731-abfc-7ded00c33ebf', 9, 'Менеджер', 'f', 4),
('486b5e1d-d372-4e68-9ca6-7516276d3cae', 6, 'Кассир', 'f', 101),
('5a355c4e-81d1-48bc-9074-5b68f52a6f08', 7, 'Кассир', 't', 3),
('34dd355b-4125-49ef-9776-a454bd9f6542', 8, 'Кассир', 'f', 102);
