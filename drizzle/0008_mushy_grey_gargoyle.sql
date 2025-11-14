CREATE TABLE "simulation_trades" (
	"id" serial PRIMARY KEY NOT NULL,
	"simulation_id" integer NOT NULL,
	"coin_id" varchar(50) NOT NULL,
	"type" varchar(10) NOT NULL,
	"amount" double precision NOT NULL,
	"entry_price" double precision NOT NULL,
	"exit_price" double precision,
	"pnl" double precision,
	"opened_at" timestamp DEFAULT now(),
	"closed_at" timestamp
);
--> statement-breakpoint
CREATE TABLE "simulations" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_id" integer NOT NULL,
	"name" varchar(100) NOT NULL,
	"start_bal" double precision NOT NULL,
	"curr_bal" double precision NOT NULL,
	"date_created" timestamp DEFAULT now()
);
--> statement-breakpoint
ALTER TABLE "simulation_trades" ADD CONSTRAINT "simulation_trades_simulation_id_simulations_id_fk" FOREIGN KEY ("simulation_id") REFERENCES "public"."simulations"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "simulations" ADD CONSTRAINT "simulations_user_id_clients_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."clients"("id") ON DELETE no action ON UPDATE no action;