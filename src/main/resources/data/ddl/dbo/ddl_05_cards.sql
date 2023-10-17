/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-10
 * Description : Table to store bank card details. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  17/10/2023    ELDHLP-67  Sarika Kondakindi  Entity to store the bank card details of users. 
 * 
 */

create table if not exists dbo.cards(card_id       bigint,
    								 card_number   varchar(16) not null,
    								 account_id    bigint not null,
   								     expiry_date   date not null,
   								     cvv           char(3) not null,
    								 name_on_card  varchar(100) not null,
    								 card_type     varchar(15) not null,
    								 inserted_by   varchar(50) default current_user,
    								 inserted_date timestamptz default now(),
    								 updated_by    varchar(50),
    								 updated_date  timestamptz,
    								 constraint cards_pk primary key(card_id),
    								 constraint cards_card_number_ak unique(card_number),
    								 constraint cards_account_id_fk foreign key(account_id) references dbo.bank_account(bank_account_id)
								    );
								    
create sequence if not exists dbo.cards_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.cards.card_id;								   