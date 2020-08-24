-- Your SQL goes here
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

create table users (
  id uuid not null unique,
  username varchar not null unique,
  email varchar not null,
  password_hash varchar not null,
  full_name varchar null,
  bio varchar null,
  image varchar null,
  -- Statut email valide ...
  created_at timestamp not null default current_timestamp,
  updated_at timestamp not null default current_timestamp
);