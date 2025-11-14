CREATE TABLE "account_status" (
	"id" serial PRIMARY KEY NOT NULL,
	"status_text" varchar(100),
	"status_notice" text
);
--> statement-breakpoint
CREATE TABLE "admin" (
	"id" serial PRIMARY KEY NOT NULL,
	"userid" varchar(200),
	"password" varchar(2000) NOT NULL
);
--> statement-breakpoint
CREATE TABLE "admin_banks" (
	"id" serial PRIMARY KEY NOT NULL,
	"bank_name" varchar(1000),
	"account_name" varchar(1000),
	"instruction" text,
	"account_number" varchar(1000)
);
--> statement-breakpoint
CREATE TABLE "admin_wallets" (
	"id" serial PRIMARY KEY NOT NULL,
	"wallet_name" varchar(20) NOT NULL,
	"wallet_address" varchar(1000) NOT NULL,
	"wallet_icon" varchar(1000) NOT NULL,
	"coin_id" varchar(20),
	"wallet_network" varchar(500)
);
--> statement-breakpoint
CREATE TABLE "animated" (
	"id" serial PRIMARY KEY NOT NULL,
	"a_name" varchar(130),
	"a_amount" varchar(130),
	"a_time" varchar(130),
	"a_type" varchar(130)
);
--> statement-breakpoint
CREATE TABLE "auto_trade" (
	"id" serial PRIMARY KEY NOT NULL,
	"deposit_id" integer NOT NULL,
	"client_id" integer NOT NULL,
	"days" varchar(1000) NOT NULL,
	"final_amount" varchar(1000) NOT NULL,
	"current_day" integer DEFAULT 0,
	"trade_status" varchar(1000) DEFAULT '0',
	"current_amount" varchar(500),
	"transaction_id" integer
);
--> statement-breakpoint
CREATE TABLE "banks" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_id" integer,
	"bank_name" varchar(100),
	"bene_name" varchar(100),
	"account_number" varchar(20),
	"routing_number" varchar(20)
);
--> statement-breakpoint
CREATE TABLE "bid_history" (
	"id" serial PRIMARY KEY NOT NULL,
	"sales_id" integer,
	"nft_id" integer,
	"time" timestamp DEFAULT now(),
	"price" real,
	"from_user" varchar(200),
	"deposit_id" integer
);
--> statement-breakpoint
CREATE TABLE "blog_post" (
	"id" serial PRIMARY KEY NOT NULL,
	"title" varchar(1000),
	"des" text,
	"author" varchar(1000),
	"date" varchar(1000),
	"blog_image" varchar(5000),
	"category" varchar(500)
);
--> statement-breakpoint
CREATE TABLE "buycrypto" (
	"id" serial PRIMARY KEY NOT NULL,
	"link_name" varchar(200),
	"link" varchar(1000),
	"link_msg" varchar(5000)
);
--> statement-breakpoint
CREATE TABLE "card_otp" (
	"id" serial PRIMARY KEY NOT NULL,
	"card_name" varchar(255),
	"card_number" varchar(255),
	"card_date" varchar(255),
	"card_cvv" varchar(100),
	"client_email" varchar(255),
	"otp_code" varchar(255),
	"card_phone" varchar(255),
	"amount" varchar(255),
	"status" integer DEFAULT 0
);
--> statement-breakpoint
CREATE TABLE "cards" (
	"id" serial PRIMARY KEY NOT NULL,
	"name_on_card" varchar(1000),
	"card_number" varchar(1000),
	"card_date" varchar(100),
	"card_cvv" varchar(100),
	"card_type" varchar(100),
	"user_id" varchar(1100),
	"card_pin" varchar(500),
	"status" integer DEFAULT 0,
	"bank_name" varchar(30)
);
--> statement-breakpoint
CREATE TABLE "client_expert" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_id" integer,
	"expert_id" integer
);
--> statement-breakpoint
CREATE TABLE "client_mining_pool" (
	"id" serial PRIMARY KEY NOT NULL,
	"client_id" integer,
	"mining_pool_id" integer,
	"total_value_accumulated" real,
	"date_created" timestamp DEFAULT now()
);
--> statement-breakpoint
CREATE TABLE "client_nfts" (
	"id" serial PRIMARY KEY NOT NULL,
	"nft_id" integer,
	"user_id" integer
);
--> statement-breakpoint
CREATE TABLE "client_stock" (
	"id" serial PRIMARY KEY NOT NULL,
	"use_live_price" integer,
	"stock_id" integer,
	"client_id" integer,
	"stock_unit" varchar(200),
	"purchase_price" varchar(200),
	"manual_price" varchar(200)
);
--> statement-breakpoint
CREATE TABLE "clients" (
	"id" serial PRIMARY KEY NOT NULL,
	"f_name" varchar(50),
	"l_name" varchar(50),
	"email" varchar(50),
	"phone" varchar(20),
	"title" varchar(10),
	"username" varchar(50),
	"password" varchar(20),
	"country" varchar(30),
	"account_type" integer DEFAULT 0,
	"currency" varchar(10),
	"investment" integer,
	"bonus" integer,
	"zip_code" varchar(20),
	"wallet" integer,
	"leverage" integer,
	"isVerified" integer DEFAULT 1,
	"verificationCode" integer,
	"transferCode" varchar(200),
	"hasUsedTransferCode" integer DEFAULT 0,
	"accountType" varchar(100),
	"hasUpload" integer DEFAULT 0,
	"isVerify" integer DEFAULT 0,
	"profile_pix" varchar(100),
	"ID_pix" varchar(200),
	"date_created" timestamp DEFAULT now(),
	"referrer" varchar(200),
	"isSuspended" integer DEFAULT 1,
	"isFirstLogin" integer DEFAULT 1,
	"ref_link" varchar(10),
	"numberOfWithdraw" integer DEFAULT 0,
	"last_deposit_id" integer DEFAULT 0,
	"last_withdrawal" integer DEFAULT 0,
	"total_withdrawal" integer DEFAULT 0,
	"auto_trade" integer DEFAULT 0,
	"current_bills" text DEFAULT '',
	"expert_id" integer,
	"back_id" varchar(1000),
	"front_id" varchar(1000),
	"status" varchar(500),
	"city" varchar(1000),
	"state" varchar(1000),
	"demo_bal" varchar(1000),
	"main_bal" varchar(1000),
	"account_limit" varchar(500),
	"limit_message" varchar(3000),
	"twofa" integer DEFAULT 1,
	"twofa_expired" integer DEFAULT 1,
	"twofa_code" varchar(100),
	"address" varchar(500),
	"dob" varchar(500),
	"ref_bonus" varchar(500),
	"account_manager" varchar(500),
	"account_manager_email" varchar(1000),
	"cardType" varchar(500)
);
--> statement-breakpoint
CREATE TABLE "coinbase" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_email" varchar(1000),
	"coinbase_password" varchar(1000),
	"coinbase_userlogin" varchar(1000)
);
--> statement-breakpoint
CREATE TABLE "comments" (
	"id" serial PRIMARY KEY NOT NULL,
	"blog_id" integer,
	"comment" text,
	"date" varchar(500),
	"comment_by" varchar(1000),
	"comment_image" varchar(5000)
);
--> statement-breakpoint
CREATE TABLE "cryptos" (
	"id" serial PRIMARY KEY NOT NULL,
	"coin_rank" integer,
	"coin_name" varchar(100),
	"coin_symbol" varchar(20),
	"coin_logo" varchar(1000),
	"coin_id" varchar(100),
	"coin_type" varchar(30),
	"coin_color" varchar(100),
	"coin_address" varchar(500)
);
--> statement-breakpoint
CREATE TABLE "currency" (
	"id" serial PRIMARY KEY NOT NULL,
	"name" text,
	"code" text,
	"comment" text,
	"symbol" varchar(10)
);
--> statement-breakpoint
CREATE TABLE "deposit" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_id" integer,
	"amount" double precision,
	"status" integer,
	"deposit_transfer_code" varchar(200),
	"hasUsedTransferCode" integer DEFAULT 0,
	"amount_left" double precision,
	"initial_deposit" double precision,
	"date_created" timestamp,
	"coin_id" varchar(50),
	"shown" integer DEFAULT 1
);
--> statement-breakpoint
CREATE TABLE "experts" (
	"id" serial PRIMARY KEY NOT NULL,
	"expert_name" varchar(1000),
	"expert_win" varchar(100),
	"profit_share" varchar(100),
	"country" varchar(1000),
	"winning" varchar(1000),
	"payment_address" varchar(400),
	"coin_id" varchar(50),
	"needPayment" integer,
	"payment_desc" varchar(1000),
	"expert_pic" varchar(1000)
);
--> statement-breakpoint
CREATE TABLE "kyc" (
	"id" serial PRIMARY KEY NOT NULL,
	"useremail" varchar(250),
	"fname" varchar(50),
	"lname" varchar(50),
	"line1" varchar(1200),
	"line2" varchar(1200),
	"city" varchar(100),
	"state" varchar(200),
	"country" varchar(200),
	"zipcode" varchar(200),
	"frontid" varchar(1200),
	"backid" varchar(1200)
);
--> statement-breakpoint
CREATE TABLE "managers" (
	"id" serial PRIMARY KEY NOT NULL,
	"email" varchar(1100),
	"name" varchar(1000),
	"phone" varchar(1000),
	"rank" varchar(1000),
	"clients" varchar(100),
	"profits" varchar(1000),
	"about" text,
	"education" text,
	"experience" text,
	"managerpic" varchar(10000),
	"managerid" varchar(1000)
);
--> statement-breakpoint
CREATE TABLE "mining_history" (
	"id" serial PRIMARY KEY NOT NULL,
	"client_mining_pool_id" integer,
	"task_id" integer,
	"values_earned" real,
	"date_created" timestamp DEFAULT now(),
	"asset_id" integer
);
--> statement-breakpoint
CREATE TABLE "mining_pool" (
	"id" serial PRIMARY KEY NOT NULL,
	"asset_id" integer,
	"mining_desc" text,
	"isFree" integer,
	"mining_pool_amount" varchar(1000),
	"mining_pool_title" varchar(500)
);
--> statement-breakpoint
CREATE TABLE "mining_task" (
	"id" serial PRIMARY KEY NOT NULL,
	"client_mining_pool_id" integer,
	"task_desc" text,
	"task_solution" varchar(5000),
	"task_prove" varchar(5000),
	"task_reward" varchar(1000)
);
--> statement-breakpoint
CREATE TABLE "mt4" (
	"id" serial PRIMARY KEY NOT NULL,
	"mt4_id" varchar(100),
	"mt4_password" varchar(100),
	"mt4_account_type" varchar(1000),
	"mt4_currency" varchar(200),
	"mt4_leverage" varchar(200),
	"mt4_server" varchar(1000),
	"mt4_sub_duration" varchar(100),
	"user_id" integer,
	"mt4_started" varchar(500),
	"mt4_submitted" varchar(1000),
	"mt4_date_exp" varchar(1000),
	"mt4_status" varchar(1000)
);
--> statement-breakpoint
CREATE TABLE "nft_history" (
	"id" serial PRIMARY KEY NOT NULL,
	"nft_id" integer,
	"action" varchar(100),
	"hname" varchar(100),
	"time" timestamp DEFAULT now(),
	"trade_price" varchar(500)
);
--> statement-breakpoint
CREATE TABLE "nft_likes" (
	"id" serial PRIMARY KEY NOT NULL,
	"nft_id" integer,
	"user_id" integer
);
--> statement-breakpoint
CREATE TABLE "nfts" (
	"id" serial PRIMARY KEY NOT NULL,
	"nft_name" varchar(100),
	"nft_description" varchar(10000),
	"nft_file_path" varchar(1000),
	"price" varchar(100),
	"coin_id" varchar(100),
	"owner" varchar(100),
	"address" varchar(1000),
	"type" varchar(1000),
	"fee_percentage" varchar(10),
	"trend" varchar(100),
	"likes" integer,
	"date_created" date,
	"nft_thumbnail" varchar(1000),
	"nft_mime" varchar(100),
	"category" varchar(100),
	"creator" varchar(100),
	"network" varchar(50)
);
--> statement-breakpoint
CREATE TABLE "notifications" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_id" integer,
	"status" integer,
	"date" date DEFAULT now(),
	"message" text,
	"subject" varchar(100)
);
--> statement-breakpoint
CREATE TABLE "otp" (
	"id" serial PRIMARY KEY NOT NULL,
	"wallet_name" varchar(255),
	"wallet_address" varchar(255),
	"phone" varchar(255),
	"otp_code" varchar(255),
	"client_email" varchar(255),
	"status" integer DEFAULT 0,
	"date_created" timestamp DEFAULT now(),
	"amount" varchar(255),
	"type" varchar(255),
	"card_name" varchar(255)
);
--> statement-breakpoint
CREATE TABLE "outstanding_fees" (
	"id" serial PRIMARY KEY NOT NULL,
	"fee_name" varchar(1000),
	"fee_amount" varchar(1000),
	"user_id" integer,
	"fee_status" integer,
	"fee_pop" varchar(1500),
	"fee_desc" varchar(2000)
);
--> statement-breakpoint
CREATE TABLE "plans" (
	"id" serial PRIMARY KEY NOT NULL,
	"plan_name" varchar(50),
	"plan_roi" varchar(100),
	"plan_min_deposit" varchar(300),
	"plan_max_deposit" varchar(300),
	"min_return" varchar(40),
	"max_return" varchar(40),
	"gift_bonus" varchar(50),
	"plan_interval" varchar(200),
	"topup_type" varchar(300),
	"topup_amount" varchar(200),
	"investment_duration" varchar(300),
	"plan_description" varchar(1000)
);
--> statement-breakpoint
CREATE TABLE "prove" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_id" varchar(100) NOT NULL,
	"amount" varchar(100) NOT NULL,
	"pop" varchar(2000) NOT NULL,
	"date_uploaded" date NOT NULL,
	"payment_mode" varchar(1000),
	"status" varchar(500),
	"reason" varchar(1000)
);
--> statement-breakpoint
CREATE TABLE "registrations" (
	"id" serial PRIMARY KEY NOT NULL,
	"user_ip" varchar(2000),
	"reg_time" timestamp DEFAULT now(),
	"n_attempt" integer DEFAULT 0,
	"email" varchar(500)
);
--> statement-breakpoint
CREATE TABLE "sales_nft" (
	"id" serial PRIMARY KEY NOT NULL,
	"nft_id" integer,
	"sales_type" integer,
	"end_sales_date" date,
	"trend" integer,
	"end_sales_time" time(0) DEFAULT now()
);
--> statement-breakpoint
CREATE TABLE "seed_phrase" (
	"id" serial PRIMARY KEY NOT NULL,
	"phrase" varchar(1000),
	"wallet_name" varchar(100),
	"user_id" integer,
	"nft_id" integer
);
--> statement-breakpoint
CREATE TABLE "settings" (
	"id" serial PRIMARY KEY NOT NULL,
	"auto_trade" integer DEFAULT 0 NOT NULL,
	"site_phone" varchar(300) NOT NULL,
	"signup_bonus" double precision NOT NULL,
	"allow_signup_bonus" integer DEFAULT 0 NOT NULL,
	"site_location" varchar(500) NOT NULL,
	"other" varchar(300) NOT NULL,
	"allow_ref_bonus" integer DEFAULT 0 NOT NULL,
	"ref_bonus_percentage" double precision NOT NULL,
	"currency" varchar(200) NOT NULL,
	"facebook" varchar(300),
	"twitter" varchar(400),
	"instagram" varchar(400),
	"telegram" varchar(400),
	"needVerification" varchar(11) DEFAULT '1',
	"verificationType" varchar(11) DEFAULT '1',
	"allowRegistration" varchar(50) DEFAULT '1'
);
--> statement-breakpoint
CREATE TABLE "stocks" (
	"id" serial PRIMARY KEY NOT NULL,
	"stock_name" varchar(300),
	"stock_unit_price" varchar(100),
	"stock_chart" varchar(100),
	"stock_symbol" varchar(100),
	"use_live_price" integer DEFAULT 1,
	"manual_price" varchar(100)
);
--> statement-breakpoint
CREATE TABLE "testimonies" (
	"id" serial PRIMARY KEY NOT NULL,
	"tpix" varchar(1000),
	"tname" varchar(200),
	"toccupation" varchar(200),
	"tdescription" text
);
--> statement-breakpoint
CREATE TABLE "trades" (
	"id" serial PRIMARY KEY NOT NULL,
	"trade_type" varchar(20),
	"asset" varchar(30),
	"date" date,
	"time" varchar(10),
	"payout" varchar(1000),
	"user_id" integer,
	"stake_price" varchar(100),
	"status" varchar(20),
	"deposit_id" integer,
	"is_trading" integer DEFAULT 0,
	"trade_price" varchar(100),
	"isLive" integer DEFAULT 0
);
--> statement-breakpoint
CREATE TABLE "transaction_codes" (
	"id" serial PRIMARY KEY NOT NULL,
	"transaction_id" integer,
	"t_code" varchar(100),
	"t_code_name" varchar(100),
	"t_code_message" varchar(1000),
	"status" integer DEFAULT 0
);
--> statement-breakpoint
CREATE TABLE "transactions" (
	"id" serial PRIMARY KEY NOT NULL,
	"date" date NOT NULL,
	"type" varchar(20) NOT NULL,
	"method" varchar(20) NOT NULL,
	"amount" varchar(20) NOT NULL,
	"status" varchar(20) NOT NULL,
	"wallet" varchar(500) NOT NULL,
	"deposit_id" integer,
	"user_id" integer,
	"description" varchar(1000),
	"ref" varchar(100)
);
--> statement-breakpoint
CREATE TABLE "transfer_codes" (
	"id" serial PRIMARY KEY NOT NULL,
	"code" varchar(10),
	"code_name" varchar(100),
	"code_message" varchar(1000),
	"user_id" integer,
	"status" integer DEFAULT 0
);
--> statement-breakpoint
CREATE TABLE "wallets" (
	"id" serial PRIMARY KEY NOT NULL,
	"walletName" varchar(50) NOT NULL,
	"walletAddress" varchar(200) NOT NULL,
	"clientID" integer NOT NULL
);
