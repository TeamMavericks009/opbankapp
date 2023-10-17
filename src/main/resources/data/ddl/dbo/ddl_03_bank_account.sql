
/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-13
 * Description : Table to store the bank account details. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-13    ELDHLP-67  Sarika Kondakindi  Entity to store the bank account details of user. 
 * 
 */


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
