-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ijGHGj
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "world_happiness" (
    "country" str   NOT NULL,
    "happiness_rank" int   NOT NULL,
    "happiness_score" int   NOT NULL,
    "economy_gdp-per-capita" int   NOT NULL,
    CONSTRAINT "pk_world_happiness" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "world_bank" (
    "country" str   NOT NULL,
    "current_health_expenditure" int   NOT NULL,
    "domestic_government_health_expenditure" int   NOT NULL,
    "out-of-pocket_expenditure" int   NOT NULL,
    CONSTRAINT "pk_world_bank" PRIMARY KEY (
        "country"
     )
);

ALTER TABLE "world_bank" ADD CONSTRAINT "fk_world_bank_country" FOREIGN KEY("country")
REFERENCES "world_happiness" ("country");

