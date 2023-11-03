/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-11-02
 * Description : Dropped the columns last_login_date, last_logout_date from dbo.user_login_history.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-11-02    ELDHLP-67  Sarika Kondakindi  Rename table dbo."transaction" to transactions since it is a reserved keyword.
 *  2023-11-02    ELDHLP-67  Sarika Kondakindi  Dropped the columns last_login_date, last_logout_date from dbo.user_login_history.
 * 
 */


/* create database opbank;
--login to database opbank i.e., connect to opbank database as postgres user or super user before proceeding

create user dbo with encrypted password '';
create schema dbo authorization postgres;
grant all privileges on database opbank to dbo;
grant all on schema dbo to dbo;
create extension pgcrypto; */

/* Initial table drop */
drop table if exists dbo."transaction";
drop table if exists dbo.transactions;
drop table if exists dbo.transaction_type;
drop table if exists dbo.transaction_category;
drop table if exists dbo.user_preferences;
drop table if exists dbo.error_log;
drop table if exists dbo.bot_response_history;
drop table if exists dbo.sessions;
drop table if exists dbo.user_feedback;
drop table if exists dbo.bank;
drop table if exists dbo.user_registration;
drop table if exists dbo.user_login_history;
drop table if exists dbo.user_login;
drop table if exists dbo.cards;
drop table if exists dbo.linked_payee;
drop table if exists dbo.bank_account;
drop table if exists dbo.users;
drop table if exists dbo.address;

drop sequence if exists dbo.address_seq;
drop sequence if exists dbo.users_seq;
drop sequence if exists dbo.bank_account_seq;
drop sequence if exists dbo.linked_payee_seq;
drop sequence if exists dbo.cards_seq;
drop sequence if exists dbo.user_login_seq;
drop sequence if exists dbo.user_login_history_seq;
drop sequence if exists dbo.user_registration_seq;
drop sequence if exists dbo.bank_seq;
drop sequence if exists dbo.user_feedback_seq;
drop sequence if exists dbo.sessions_seq;
drop sequence if exists dbo.bot_response_history_seq;
drop sequence if exists dbo.error_log_seq;
drop sequence if exists dbo.user_preferences_seq;
drop sequence if exists dbo.transaction_category_seq;
drop sequence if exists dbo.transaction_type_seq;
drop sequence if exists dbo.transaction_seq;
drop sequence if exists dbo.transactions_seq;

/** 
 * Address table
 * **/
create table if not exists dbo.address(address_id               bigint,
                                       perm_addr_unit_level_no   numeric(5),
                                       perm_addr_street_no       int,
                                       perm_addr_street_name     varchar(50) not null,
                                       perm_addr_street_type     varchar(50) not null,
                                       perm_addr_suburb          varchar(50) not null,
                                       perm_addr_state           varchar(50) not null,
                                       perm_addr_zip             varchar(5) not null,
                                       perm_addr_country         varchar(30) not null,
                                       mail_addr_unit_level_no   numeric(5),
                                       mail_addr_street_no       int,
                                       mail_addr_street_name     varchar(50) not null,
                                       mail_addr_street_type     varchar(50) not null,
                                       mail_addr_suburb          varchar(50) not null,
                                       mail_addr_state           varchar(50) not null,
                                       mail_addr_zip             varchar(5) not null,
                                       mail_addr_country         varchar(30) not null,
                                       inserted_by              varchar(50) default current_user,
                                       inserted_date            timestamptz default now(),
                                       updated_by               varchar(50),
                                       updated_date             timestamptz,
                                       constraint address_pk primary key(address_id)
                                      );
create sequence if not exists dbo.address_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.address.address_id;
                     
 
/** 
 * Users table
 * **/
create table if not exists dbo.users(user_id       bigint,
                                     first_name    varchar(50) not null,
                                     last_name     varchar(50) not null,
                                     middle_name   varchar(50),
                                     person_title  varchar(30) not null,
                                     date_of_birth date not null,
                                     gender        char(20) not null,
                                     email         varchar(100) ,
                                     phone_number  varchar(20),
                                     address_id    bigint not null,
                                     inserted_by   varchar(50) default current_user,
                                     inserted_date timestamptz default now(),
                                     updated_by    varchar(50),
                                     updated_date  timestamptz,
                                     constraint users_pk primary key(user_id),
                                     constraint users_address_id_fk foreign key (address_id) references dbo.address(address_id),
                                     constraint users_gender_ck check (gender in ('Male', 'Female', 'Other/Non-Binary', 'Prefer not to say')) ,
                                     constraint users_email_ck check ((email is null and phone_number is not null) or (email is not null and phone_number is null) or (email is not null and phone_number is not null))
                                    );

create sequence if not exists dbo.users_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.users.user_id;
                     
  
/**
 * Bank account table **/                     
create table if not exists dbo.bank_account(bank_account_id  bigint,
    										bsb              char(6) not null,
    										security_pin     varchar(10),
    										account_no       char(10) not null,
    										account_type     varchar(20) not null,
    										user_id          bigint not null,
    										currency_type    char(3) default 'aud' not null,
    										balance          numeric(10, 2) default 0 not null,
    										interest_rate    numeric(4, 3) not null,
    										minimum_balance  numeric(10, 2) default 0 not null,
    										is_joint_account boolean default false not null,
    										tfn              varchar(9),
    										status           varchar(15) default 'Active' not null,
    										last_active_on   timestamptz,
    										inserted_by      varchar(50) default current_user,
    										inserted_date    timestamptz default now(),
    										updated_by       varchar(50),
    										updated_date     timestamptz,
    										constraint bank_account_pk primary key(bank_account_id),
    										constraint bank_account_user_id_fk foreign key (user_id) references dbo.users(user_id));

create sequence if not exists dbo.bank_account_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.bank_account.bank_account_id;
                     
                     
/** 
 * Linked Payee**/
create table if not exists dbo.linked_payee(linked_payee_id        bigint,
    										sender_bank_account_id bigint not null,
    										nick_name_of_payee     varchar(20) not null,
    										account_no             char(10) not null,
    										bsb                    char(6) not null,
    										full_name_of_payee     varchar(100) not null,
    										bank_name              varchar(100) not null,
    										inserted_by            varchar(50) default current_user,
    										inserted_date          timestamptz default now(),
    										updated_by             varchar(50),
    										updated_date           timestamptz,
   										    constraint linked_payee_pk primary key (linked_payee_id),
    										constraint linked_payee_sender_bank_account_id_fk foreign key(sender_bank_account_id) references dbo.bank_account(bank_account_id)
											);

create sequence if not exists dbo.linked_payee_seq as bigint
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.linked_payee.linked_payee_id;
                     
                     

 /** 
 * Cards Table **/                    
create table if not exists dbo.cards(card_id       bigint,
    								 card_number   varchar(16) not null,
    								 account_id    bigint not null,
   								     expiry_date   date not null,
   								     cvv           char(3) not null,
    								 name_on_card  varchar(100) not null,
    								 card_type     varchar(15) not null,
    								 inserted_by   varchar(50) default current_user,
    								 inserted_date timestamptz default now(),
    								 updated_by    varchar(50),
    								 updated_date  timestamptz,
    								 constraint cards_pk primary key(card_id),
    								 constraint cards_card_number_ak unique(card_number),
    								 constraint cards_account_id_fk foreign key(account_id) references dbo.bank_account(bank_account_id)
								    );
								    
create sequence if not exists dbo.cards_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.cards.card_id;   
                     
                     
/** 
 * User_Login Table **/
                     
create table if not exists dbo.user_login(user_login_id         bigint,
										  login_id              varchar(50) not null,
    									  encrypted_password    text not null,
    									  pswd_last_modified_on timestamp,
    									  ip_address            inet not null,
    									  user_name             varchar(30) not null,
    									  inserted_by           varchar(50) default current_user,
    									  inserted_date         timestamptz default now(),
    									  updated_by            varchar(50),
    									  updated_date          timestamptz,
    									  constraint user_login_pk primary key(user_login_id),
    									  constraint user_login_login_id_ak unique(login_id),
    									  constraint user_login_user_login_id_fk foreign key(user_login_id) references dbo.users(user_id)
									      );
create sequence if not exists dbo.user_login_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_login.user_login_id;
                     
                     
/** 
 * User_Login_History **/
create table if not exists dbo.user_login_history (user_login_history_id bigint,
                                                   user_login_id         bigint,
                                                   login_id              varchar(50),
                                                   encrypted_password    text,
                                                   --encryption            varchar(30), column removed
                                                   pswd_last_modified_on timestamp,
                                                   ip_address            inet,
                                                   user_name             varchar(30),
                                                   --last_login_date       timestamp, dropped the columns
                                                   --last_logout_date      timestamp,
                                                   record_status         char(1) default 'I',
                                                   inserted_by           varchar(50) default current_user,
                                                   inserted_date         timestamptz default now(),
                                                   constraint user_login_history_pk primary key(user_login_history_id)
                                                   );
alter table dbo.user_login_history drop column if exists last_login_date;
alter table dbo.user_login_history drop column if exists last_logout_date;												   

create sequence if not exists dbo.user_login_history_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_login_history.user_login_history_id; 
                     

/** 
 * User_registration Table**/                     
create table if not exists dbo.user_registration(user_registration_id bigint,
                                                 user_id              bigint not null,
                                                 temp_request_id      numeric(10) not null,
                                                 account_reset_flag   boolean default false,
                                                 bank_account_id      bigint not null,
                                                 temp_password        text not null,
                                                 password             text,
                                                 inserted_by          varchar(50) default current_user,
                                                 inserted_date        timestamptz default now(),
                                                 updated_by           varchar(50),
                                                 updated_date         timestamptz,
                                                 constraint user_registration_pk primary key(user_registration_id),
                                                 constraint user_registration_user_id_fk foreign key(user_id) references dbo.users(user_id),
                                                 constraint user_registration_bank_account_id_fk foreign key(bank_account_id) references dbo.bank_account(bank_account_id)
                                                 );
                                                 
 create sequence if not exists dbo.user_registration_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_registration.user_registration_id;
                     
                     
/*
 * Bank Table*/
create table if not exists dbo.bank( bank_id        bigint,
    								 bank_name      varchar(150) not null,
                                     address        varchar(200) not null,
                                     branch_name    varchar(100) not null,
                                     branch_code    varchar(50) not null,
                                     branch_manager varchar(100) not null,
                                     inserted_by    varchar(50) default current_user,
                                     inserted_date  timestamptz default now(),
                                     updated_by     varchar(50),
                                     updated_date   timestamptz,
                                     constraint bank_pk primary key(bank_id)
                                    );
create sequence if not exists dbo.bank_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.bank.bank_id;  
                     
/* 
 * User feedback Table*/
create table if not exists dbo.user_feedback(user_feedback_id bigint primary key,
                                             feedback_type    varchar(50) default 'Feedback' not null,
                                             feedback_header  varchar(150) not null,
                                             description      varchar(500) not null,
                                             comments         varchar(150),
                                             inserted_by      varchar(50) default current_user,
                                             inserted_date    timestamptz default now(),
                                             updated_by       varchar(50),
                                             updated_date     timestamptz
                                             );
create sequence if not exists dbo.user_feedback_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_feedback.user_feedback_id; 
                     
            
/* 
 * Sessions Table */
 create table if not exists dbo.sessions(session_id         bigint,
                                        user_id            bigint,
                                        session_start_date timestamp,
                                        session_stop_date  timestamp,
                                        inserted_by        varchar(50) default current_user,
                                        inserted_date      timestamptz default now(),
                                        updated_by         varchar(50),
                                        updated_date       timestamptz,
                                        constraint sessions_pk primary key(session_id),
                                        constraint sessions_user_id_fk foreign key(user_id) references dbo.users(user_id)
                                        );
create sequence if not exists dbo.sessions_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.sessions.session_id;   
                     
/* 
 * bot_response_history */
                     
create table if not exists dbo.bot_response_history(bot_response_history_id bigint,
                                                    session_id              bigint,
                                                    user_request            text,
                                                    bot_response            text,
                                                    user_id                 bigint,
                                                    inserted_by             varchar(50) default current_user,
                                                    inserted_date           timestamptz default now(),
                                                    updated_by              varchar(50),
                                                    updated_date            timestamptz,
                                                    constraint bot_response_history_pk primary key(bot_response_history_id),
                                                    constraint bot_response_history_session_id_fk foreign key(session_id) references dbo.sessions(session_id),
                                                    constraint bot_response_history_user_id_fk foreign key(user_id) references dbo.users(user_id)
                                                    );
create sequence if not exists dbo.bot_response_history_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.bot_response_history.bot_response_history_id;

                     
                     
/* 
 * Error log */
create table if not exists dbo.error_log(error_log_id      bigint,
                                         error_type        varchar(10) not null,
                                         error_name        varchar(50) not null,
                                         error_description varchar(1000) not null,
                                         error_code        varchar(50) not null,
                                         inserted_by       varchar(50) default current_user,
                                         inserted_date     timestamptz default now(),
                                         updated_by        varchar(50),
                                         updated_date      timestamptz,
                                         constraint error_log_pk primary key(error_log_id)
                                        );
create sequence if not exists dbo.error_log_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.error_log.error_log_id; 

                     
/* 
 * User preferences*/
create table if not exists dbo.user_preferences(user_preference_id  bigint,
                                  user_id             bigint not null,
                                  view_type           char(1) not null,
                                  panel_customization char(1) not null,
                                  font_size           numeric(5,2),
                                  font_type           varchar(50),
                                  font_colour         varchar(30),
                                  inserted_by         varchar(50) default current_user,
                                  inserted_date       timestamptz default now(),
                                  updated_by          varchar(50),
                                  updated_date        timestamptz,
                                  constraint user_preferences_pk primary key(user_preference_id),
                                  constraint user_preferences_user_id_fk foreign key (user_id) references dbo.users(user_id)
                                  );
create sequence if not exists dbo.user_preferences_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_preferences.user_preference_id; 
                     
/* 
 * TRansactions Category*/
create table if not exists dbo.transaction_category(transaction_category_id int,
                                                    category                varchar(30),
                                                    description             varchar(50),
                                                    inserted_by             varchar(50) default current_user,
                                                    inserted_date           timestamptz default now(),
                                                    updated_by              varchar(50),
                                                    updated_date            timestamptz,
                                                    constraint transaction_category_pk primary key(transaction_category_id),
                                                    constraint transaction_category_category_ak unique(category)
                                                    );

create sequence if not exists dbo.transaction_category_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.transaction_category.transaction_category_id;
                     
                     
/* TRansaction_type
 * */
create table if not exists dbo.transaction_type(transaction_type_id int,
                                                transaction_type    varchar(30) not null,
                                                inserted_by         varchar(50) default current_user,
                                                inserted_date       timestamptz default now(),
                                                updated_by          varchar(50),
                                                updated_date        timestamptz,
                                                constraint transaction_type_pk primary key(transaction_type_id),
                                                constraint transaction_type_ak unique(transaction_type)
                                                );
create sequence if not exists dbo.transaction_type_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.transaction_type.transaction_type_id;
                     
                     
/*  Transactions
 * 
 */
 create table if not exists dbo.transactions(transaction_id          bigint,
                                             transaction_no          bigint not null,
                                             bank_account_id         bigint not null,
                                             transaction_category_id int not null,
                                             transaction_type_id     int not null,
                                             transaction_amount      numeric(10,4) not null default 0,
                                             participant_account_id  bigint,-- (fk payee id)
                                             balance                 numeric(10,4) not null,
                                             status                  varchar(30) not null,
										     user_id                 bigint not null,
										     transaction_date        timestamp not null,
										     description             varchar(50),
										     inserted_by             varchar(50) default current_user,
                                             inserted_date           timestamptz default now(),
                                             updated_by              varchar(50),
                                             updated_date            timestamptz,
                                             constraint transactions_pk primary key(transaction_id),
                                             constraint transactions_transaction_no_ak unique(transaction_no,user_id),
                                             constraint transactions_bank_account_id_fk foreign key(bank_account_id) references dbo.bank_account(bank_account_id),
                                             constraint transactions_transaction_category_id_fk foreign key(transaction_category_id) references dbo.transaction_category(transaction_category_id),
                                             constraint transactions_transaction_type_id_fk foreign key(transaction_type_id) references dbo.transaction_type(transaction_type_id),
                                             constraint transactions_participant_account_id_fk foreign key(participant_account_id) references dbo.linked_payee(linked_payee_id),
                                             constraint transactions_user_id_fk foreign key(user_id) references dbo.users(user_id)
                                           );

create sequence if not exists dbo.transactions_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.transactions.transaction_id; 
					 
/**do $$
begin
   if exists (select 1 
                from pg_catalog.pg_constraint 
               where conname = 'transactions_transaction_no_ak'
                 and connamespace::regnamespace::text = 'dbo'
                 and conrelid::regclass::text = 'transactions')
   then 
      raise info 'Dropping AK on dbo.transactions.transaction_no and creating AK on dbo.transactions.transaction_no,user_id ';
      alter table dbo.transactions drop constraint if exists transactions_transaction_no_ak;
      alter table dbo.transactions add constraint transactions_transaction_no_user_id_ak unique (transaction_no,user_id);
   end if; 
end $$ language plpgsql; **/

					 