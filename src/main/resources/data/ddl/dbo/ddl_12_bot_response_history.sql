/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store response history details of the chatbot. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Table to store response history details of the chatbot. Initial Commit. 
 * 
 */


create table if not exists dbo.bot_response_history(bot_response_history_id bigint,
                                                    session_id              bigint,
                                                    user_request            text,
                                                    bot_response            text,
                                                    user_id                 bigint,
                                                    inserted_by             varchar(50) default current_user,
                                                    inserted_date           timestamptz default now(),
                                                    updated_by              varchar(50),
                                                    updated_date            timestamptz,
                                                    constraint bot_response_history_pk primary key(bot_response_history_id),
                                                    constraint bot_response_history_session_id_fk foreign key(session_id) references dbo.sessions(session_id),
                                                    constraint bot_response_history_user_id_fk foreign key(user_id) references dbo.users(user_id)
                                                    );
create sequence if not exists dbo.bot_response_history_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.bot_response_history.bot_response_history_id; 