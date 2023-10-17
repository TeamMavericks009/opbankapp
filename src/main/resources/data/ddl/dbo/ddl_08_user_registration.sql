
/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store registration details of the users. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Entity to store the registration details of users. 
 * 
 */

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