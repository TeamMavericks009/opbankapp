/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store session details of the user. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Table to store session details of the user. Initial Commit. 
 * 
 */

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