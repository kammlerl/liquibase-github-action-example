
-- liquibase formatted sql

-- changeset liquibase:1673012024524-1
CREATE TABLE "test1" ("t1_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test1" INTEGER, CONSTRAINT "Test1_pk" PRIMARY KEY ("t1_id"));

-- liquibase formatted sql

-- changeset liquibase:1673012895052-1
CREATE TABLE "test2" ("t2_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test2" INTEGER, CONSTRAINT "Test2_pk" PRIMARY KEY ("t2_id"));

-- liquibase formatted sql

-- changeset liquibase:1673013313794-1
CREATE TABLE "test3" ("t3_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test3" INTEGER, CONSTRAINT "Test3_pk" PRIMARY KEY ("t3_id"));

-- liquibase formatted sql

-- changeset liquibase:1673013719853-1
DROP TABLE "test2";

