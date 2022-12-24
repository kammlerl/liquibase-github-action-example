-- liquibase formatted sql

-- changeset liquibase:1671886415658-1
CREATE TABLE "liga" ("liga_nr" INTEGER NOT NULL, "verband" VARCHAR(255) NOT NULL, "erstaustragung" date NOT NULL, "meister" INTEGER, "rekordspieler" VARCHAR(255) DEFAULT 'NULL::character varying', "spiele_rekordspieler" INTEGER, CONSTRAINT "Liga_pk" PRIMARY KEY ("liga_nr"));

-- changeset liquibase:1671886415658-2
CREATE TABLE "spieler" ("spieler_id" INTEGER NOT NULL, "vereins_id" INTEGER NOT NULL, "trikot_nr" INTEGER, "spieler_name" VARCHAR(255) NOT NULL, "land" VARCHAR(255) DEFAULT 'NULL::character varying', "spiele" INTEGER, "tore" INTEGER, "vorlagen" INTEGER, CONSTRAINT "Spieler_pk" PRIMARY KEY ("spieler_id"));

-- changeset liquibase:1671886415658-3
CREATE TABLE "spiel" ("spiel_id" INTEGER NOT NULL, "spieltag" INTEGER, "datum" date, "uhrzeit" time(6) WITHOUT TIME ZONE, "heim" INTEGER NOT NULL, "gast" INTEGER NOT NULL, "tore_heim" INTEGER, "tore_gast" INTEGER, CONSTRAINT "Spiel_pk" PRIMARY KEY ("spiel_id"));

-- changeset liquibase:1671886415658-4
CREATE TABLE "verein" ("v_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "liga" INTEGER, CONSTRAINT "Verein_pk" PRIMARY KEY ("v_id"));

-- liquibase formatted sql

-- changeset liquibase:1671887051955-1
CREATE TABLE "liga" ("liga_nr" INTEGER NOT NULL, "verband" VARCHAR(255) NOT NULL, "erstaustragung" date NOT NULL, "meister" INTEGER, "rekordspieler" VARCHAR(255) DEFAULT 'NULL::character varying', "spiele_rekordspieler" INTEGER, CONSTRAINT "Liga_pk" PRIMARY KEY ("liga_nr"));

-- changeset liquibase:1671887051955-2
CREATE TABLE "spieler" ("spieler_id" INTEGER NOT NULL, "vereins_id" INTEGER NOT NULL, "trikot_nr" INTEGER, "spieler_name" VARCHAR(255) NOT NULL, "land" VARCHAR(255) DEFAULT 'NULL::character varying', "spiele" INTEGER, "tore" INTEGER, "vorlagen" INTEGER, CONSTRAINT "Spieler_pk" PRIMARY KEY ("spieler_id"));

-- changeset liquibase:1671887051955-3
CREATE TABLE "spiel" ("spiel_id" INTEGER NOT NULL, "spieltag" INTEGER, "datum" date, "uhrzeit" time(6) WITHOUT TIME ZONE, "heim" INTEGER NOT NULL, "gast" INTEGER NOT NULL, "tore_heim" INTEGER, "tore_gast" INTEGER, CONSTRAINT "Spiel_pk" PRIMARY KEY ("spiel_id"));

-- changeset liquibase:1671887051955-4
CREATE TABLE "test" ("t_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test" INTEGER, CONSTRAINT "Test_pk" PRIMARY KEY ("t_id"));

-- changeset liquibase:1671887051955-5
CREATE TABLE "verein" ("v_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "liga" INTEGER, CONSTRAINT "Verein_pk" PRIMARY KEY ("v_id"));

-- liquibase formatted sql

-- changeset liquibase:1671887351221-1
CREATE TABLE "test" ("t_id" INTEGER NOT NULL, "name" VARCHAR(255) NOT NULL, "test" INTEGER, CONSTRAINT "Test_pk" PRIMARY KEY ("t_id"));

