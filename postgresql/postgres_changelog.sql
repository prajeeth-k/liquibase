--liquibase formatted sql

--changeset changeset:1 labels:label1 context:context1
--comment: example comment
create table person (
    id SERIAL primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
);
--rollback DROP TABLE person;

--changeset changeset:2 labels:label1 context:context1
--comment: example comment
create table company (
    id SERIAL primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
);
--rollback DROP TABLE company;

--changeset changeset:3 labels:label1 context:context1
--comment: example comment
alter table person add column country varchar(2);
--rollback ALTER TABLE person DROP COLUMN country;

