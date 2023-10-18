
/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store transaction types for transactions. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Entity to store transaction types for transactions.
 * 
 */
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



