/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-10
 * Description : Table to store linked payee details of user. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  17/10/2023    ELDHLP-67  Sarika Kondakindi  Entity to store the linked payee details of user. 
 * 
 */


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
