/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store error details. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Entity to store the error details. Initial Commit. 
 * 
 */

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