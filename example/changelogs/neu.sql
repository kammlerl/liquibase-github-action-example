-- liquibase formatted sql

-- changeset liquibase:1672320241517-1
CREATE TABLE "liga" ("liga_nr" INTEGER NOT NULL, "verband" VARCHAR(255) NOT NULL, "erstaustragung" date NOT NULL, "meister" INTEGER, "rekordspieler" VARCHAR(255) DEFAULT 'NULL::character varying', "spiele_rekordspieler" INTEGER, CONSTRAINT "Liga_pk" PRIMARY KEY ("liga_nr"));

-- changeset liquibase:1672320241517-2
CREATE TABLE "spieler" ("spieler_id" INTEGER NOT NULL, "vereins_id" INTEGER NOT NULL, "trikot_nr" INTEGER, "spieler_name" VARCHAR(255) NOT NULL, "land" VARCHAR(255) DEFAULT 'NULL::character varying', "spiele" INTEGER, "tore" INTEGER, "vorlagen" INTEGER, CONSTRAINT "Spieler_pk" PRIMARY KEY ("spieler_id"));

-- changeset liquibase:1672320241517-3
CREATE TABLE "spiel" ("spiel_id" INTEGER NOT NULL, "spieltag" INTEGER, "datum" date, "uhrzeit" time(6) WITHOUT TIME ZONE, "heim" INTEGER NOT NULL, "gast" INTEGER NOT NULL, "tore_heim" INTEGER, "tore_gast" INTEGER, CONSTRAINT "Spiel_pk" PRIMARY KEY ("spiel_id"));

-- changeset liquibase:1672320241517-4
CREATE TABLE "test" ("t_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test" INTEGER, CONSTRAINT "Test_pk" PRIMARY KEY ("t_id"));

-- changeset liquibase:1672320241517-5
CREATE TABLE "verein" ("v_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "liga" INTEGER, CONSTRAINT "Verein_pk" PRIMARY KEY ("v_id"));

-- liquibase formatted sql

-- changeset liquibase:1672321905409-1
CREATE TABLE "test2" ("t2_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test2" INTEGER, CONSTRAINT "Test2_pk" PRIMARY KEY ("t2_id"));

-- liquibase formatted sql

-- changeset liquibase:1672394315030-1
CREATE TABLE "test3" ("t3_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test3" INTEGER, CONSTRAINT "Test3_pk" PRIMARY KEY ("t3_id"));

