CREATE DATABASE empresa;
\c empresa;

CREATE TABLE usuario(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);