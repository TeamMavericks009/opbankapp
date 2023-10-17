/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store history of login details of the users. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Table to store history of login details of the users
 * 
 */

create table if not exists dbo.user_login_history (user_login_history_id bigint,
                                                   user_login_id         bigint,
                                                   user_id               varchar(50),
                                                   encrypted_password    text,
                                                   encryption            varchar(30),
                                                   pswd_last_modified_on timestamp,
                                                   ip_address            inet,
                                                   user_name             varchar(30),
                                                   last_login_date       timestamp,
                                                   last_logout_date      timestamp,
                                                   record_status         char(1) default 'I',
                                                   inserted_by           varchar(50) default current_user,
                                                   inserted_date         timestamptz default now(),
                                                   constraint user_login_history_pk primary key(user_login_history_id)
                                                   );

create sequence if not exists dbo.user_login_history_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_login_history.user_login_history_id;