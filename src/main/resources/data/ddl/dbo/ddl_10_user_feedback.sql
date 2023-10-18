
/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store feedback details of the users. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Entity to store the feedback details of users. 
 * 
 */


create table if not exists dbo.user_feedback(user_feedback_id bigint primary key,
                                             feedback_type    varchar(50) default 'Feedback' not null,
                                             feedback_header  varchar(150) not null,
                                             description      varchar(500) not null,
                                             comments         varchar(150),
                                             inserted_by      varchar(50) default current_user,
                                             inserted_date    timestamptz default now(),
                                             updated_by       varchar(50),
                                             updated_date     timestamptz
                                             );
create sequence if not exists dbo.user_feedback_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_feedback.user_feedback_id;                                             