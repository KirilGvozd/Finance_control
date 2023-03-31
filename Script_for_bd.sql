CREATE TABLE "Category_of_income"(
    "id" INT NOT NULL,
    "name_of_category" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Category_of_income" ADD CONSTRAINT "category_of_income_id_primary" PRIMARY KEY("id");
CREATE TABLE "Income"(
    "id" INT NOT NULL,
    "user_id" INT NOT NULL,
    "category_id" INT NOT NULL,
    "date" DATE NOT NULL,
    "sum_of_income" INT NOT NULL,
    "description" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Income" ADD CONSTRAINT "income_id_primary" PRIMARY KEY("id");
CREATE TABLE "User"(
    "id" INT NOT NULL,
    "login" NVARCHAR(255) NOT NULL,
    "password" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "User" ADD CONSTRAINT "user_id_primary" PRIMARY KEY("id");
CREATE TABLE "Expence"(
    "id" INT NOT NULL,
    "user_id" INT NOT NULL,
    "category_id" INT NOT NULL,
    "date" DATE NOT NULL,
    "sum_of_expence" INT NOT NULL,
    "description" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Expence" ADD CONSTRAINT "expence_id_primary" PRIMARY KEY("id");
CREATE TABLE "Category_of_expence"(
    "id" INT NOT NULL,
    "name_of_category" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Category_of_expence" ADD CONSTRAINT "category_of_expence_id_primary" PRIMARY KEY("id");
ALTER TABLE
    "Income" ADD CONSTRAINT "income_category_id_foreign" FOREIGN KEY("category_id") REFERENCES "Category_of_income"("id");
ALTER TABLE
    "Expence" ADD CONSTRAINT "expence_category_id_foreign" FOREIGN KEY("category_id") REFERENCES "Category_of_expence"("id");
ALTER TABLE
    "Income" ADD CONSTRAINT "income_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "User"("id");
ALTER TABLE
    "Expence" ADD CONSTRAINT "expence_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "User"("id");