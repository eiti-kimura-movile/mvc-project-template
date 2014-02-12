create database trainning;

use trainning;

CREATE TABLE employee (
	id BIGSERIAL NOT NULL ,
	name VARCHAR(100),
	birth_date DATE,
	email VARCHAR(100),
	PRIMARY KEY(id)
);
