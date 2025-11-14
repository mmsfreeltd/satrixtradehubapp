CREATE TABLE "loans" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_id" integer NOT NULL,
	"amount_requested" double precision NOT NULL,
	"amount_approved" double precision,
	"status" varchar(20) DEFAULT 'pending' NOT NULL,
	"date_requested" timestamp DEFAULT now() NOT NULL,
	"date_updated" timestamp
);
