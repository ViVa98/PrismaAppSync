-- CreateTable
CREATE TABLE "people" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR,
    "country" VARCHAR,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "person_emails" (
    "id" SERIAL NOT NULL,
    "person_id" INTEGER NOT NULL,
    "value" VARCHAR,

    PRIMARY KEY ("id")
);
