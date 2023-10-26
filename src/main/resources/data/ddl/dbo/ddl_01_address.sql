/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-10
 * Description : Table to store permanent and mailing address details of the users. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  17/10/2023    ELDHLP-67  Sarika Kondakindi  Entity to store the permanent and mailing address details of users. 
 *  26/10/2023    ELDHLP-67  Sarika Kondakindi  Rename columns mail_address_street_type,mail_address_suburb,
                                                mail_address_state, mail_address_zip to follow column structure mail_adr_.
 
 */

create table if not exists dbo.address(address_id               bigint,
                                       perm_adr_unit_level_no   numeric(5),
                                       perm_adr_street_no       int,
                                       perm_adr_street_name     varchar(50) not null,
                                       perm_adr_street_type     varchar(50) not null,
                                       perm_adr_suburb          varchar(50) not null,
                                       perm_adr_state           varchar(50) not null,
                                       perm_adr_zip             varchar(5) not null,
                                       perm_adr_country         varchar(30) not null,
                                       mail_adr_unit_level_no   numeric(5),
                                       mail_adr_street_no       int,
                                       mail_adr_street_name     varchar(50) not null,
                                       mail_adr_street_type varchar(50) not null,
                                       mail_adr_suburb      varchar(50) not null,
                                       mail_adr_state       varchar(50) not null,
                                       mail_adr_zip         varchar(5) not null,
                                       mail_adr_country         varchar(30) not null,
                                       inserted_by              varchar(50) default current_user,
                                       inserted_date            timestamptz default now(),
                                       updated_by               varchar(50),
                                       updated_date             timestamptz,
                                       constraint address_pk primary key(address_id)
                                      );
create sequence if not exists dbo.address_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.address.address_id;



