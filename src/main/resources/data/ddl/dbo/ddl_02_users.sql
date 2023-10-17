/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-13
 * Description : Table to store the bank user details. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-13    ELDHLP-67  Sarika Kondakindi  Entity to store the bank user details. 
 * 
 */

create table if not exists dbo.users(user_id       bigint,
                                     first_name    varchar(50) not null,
                                     last_name     varchar(50) not null,
                                     middle_name   varchar(50),
                                     person_title  varchar(30) not null,
                                     date_of_birth date not null,
                                     gender        char(20) not null,
                                     email         varchar(100) ,
                                     phone_number  varchar(20),
                                     address_id    bigint not null,
                                     inserted_by   varchar(50) default current_user,
                                     inserted_date timestamptz default now(),
                                     updated_by    varchar(50),
                                     updated_date  timestamptz,
                                     constraint users_pk primary key(user_id),
                                     constraint users_address_id_fk foreign key (address_id) references dbo.address(address_id),
                                     constraint users_gender_ck check (gender in ('Male', 'Female', 'Other/Non-Binary', 'Prefer not to say')) ,
                                     constraint users_email_ck check ((email is null and phone_number is not null) or (email is not null and phone_number is null) or (email is not null and phone_number is not null))
                                    );

create sequence if not exists dbo.users_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.users.user_id;
