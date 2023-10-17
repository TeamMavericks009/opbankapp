/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-17
 * Description : Table to store login details of the users. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-17    ELDHLP-67  Sarika Kondakindi  Entity to store the login details of users. 
 * 
 */

create table if not exists dbo.user_login(user_login_id         bigint,
    									  login_id              varchar(50) not null,
    									  encrypted_password    bytea not null,
    									  pswd_last_modified_on timestamp,
    									  ip_address            inet not null,
    									  user_name             varchar(30) not null,
    									  inserted_by           varchar(50) default current_user,
    									  inserted_date         timestamptz default now(),
    									  updated_by            varchar(50),
    									  updated_date          timestamptz,
    									  constraint user_login_pk primary key(user_login_id),
    									  constraint user_login_login_id_ak unique(login_id),
    									  constraint user_login_user_login_id_fk foreign key(user_login_id) references dbo.user_login(user_login_id)
									      );
create sequence if not exists dbo.user_login_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_login.user_login_id;