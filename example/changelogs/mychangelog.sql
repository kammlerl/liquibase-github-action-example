-- liquibase formatted sql

-- changeset liquibase:1671887649569-1
CREATE TABLE "test" ("t_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test" INTEGER, CONSTRAINT "Test_pk" PRIMARY KEY ("t_id"));

