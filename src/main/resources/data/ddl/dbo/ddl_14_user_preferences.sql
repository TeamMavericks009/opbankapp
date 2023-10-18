
/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store preference details of the users. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Entity to store preference details of users. Initial Commit.
 * 
 */


create table dbo.user_preferences(user_preference_id  bigint,
                                  user_id             bigint not null,
                                  view_type           char(1) not null,
                                  panel_customization char(1) not null,
                                  font_size           numeric(5,2),
                                  font_type           varchar(50),
                                  font_colour         varchar(30),
                                  inserted_by         varchar(50) default current_user,
                                  inserted_date       timestamptz default now(),
                                  updated_by          varchar(50),
                                  updated_date        timestamptz,
                                  constraint user_preferences_pk primary key(user_preference_id),
                                  constraint user_preferences_user_id_fk foreign key (user_id) references dbo.users(user_id)
                                  );
create sequence if not exists dbo.user_preferences_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_preferences.user_preference_id;                                  
