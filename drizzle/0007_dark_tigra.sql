CREATE TABLE "user_documents" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_id" integer NOT NULL,
	"doc_type" varchar(200) NOT NULL,
	"file_url" varchar(2000) NOT NULL,
	"public_id" varchar(500) NOT NULL,
	"date_uploaded" timestamp DEFAULT now() NOT NULL
);
