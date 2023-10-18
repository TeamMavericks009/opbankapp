/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store transaction details. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Entity to store transaction details. Initial Commit.
 * 
 */


create table if not exists dbo.transaction(transaction_id          bigint,
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
                                           constraint transaction_pk primary key(transaction_id),
                                           constraint transaction_transaction_no_ak unique(transaction_no),
                                           constraint transaction_bank_account_id_fk foreign key(bank_account_id) references dbo.bank_account(bank_account_id),
                                           constraint transaction_transaction_category_id_fk foreign key(transaction_category_id) references dbo.transaction_category(transaction_category_id),
                                           constraint transaction_transaction_type_id_fk foreign key(transaction_type_id) references dbo.transaction_type(transaction_type_id),
                                           constraint transaction_participant_account_id_fk foreign key(participant_account_id) references dbo.linked_payee(linked_payee_id),
                                           constraint transaction_user_id_fk foreign key(user_id) references dbo.users(user_id)
                                           );

create sequence if not exists dbo.transaction_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.transaction.transaction_id;                                                 
                                          
                                          
                                          
                                          

