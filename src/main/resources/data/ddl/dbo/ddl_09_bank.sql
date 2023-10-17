/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store bank details. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Entity to store the bank details. 
 * 
 */

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