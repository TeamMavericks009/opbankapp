create database opbank;
--login to database opbank i.e., connect to opbank database as postgres user or super user before proceeding

create user dbo with encrypted password '';
create schema dbo authorization postgres;
grant all privileges on database opbank to dbo;
grant all on schema dbo to dbo;
create extension pgcrypto;