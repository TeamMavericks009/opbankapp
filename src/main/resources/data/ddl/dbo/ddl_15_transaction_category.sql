/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-18
 * Description : Table to store transaction categories of the transaction. Initial Commit.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-18    ELDHLP-67  Sarika Kondakindi  Entity to store transaction categories of the 
 *                                              transaction. Initial Commit.
 * 
 */

create table if not exists dbo.transaction_category(transaction_category_id int,
                                                    category                varchar(30),
                                                    description             varchar(50),
                                                    inserted_by             varchar(50) default current_user,
                                                    inserted_date           timestamptz default now(),
                                                    updated_by              varchar(50),
                                                    updated_date            timestamptz,
                                                    constraint transaction_category_pk primary key(transaction_category_id),
                                                    constraint transaction_category_category_ak unique(category)
                                                    );

create sequence if not exists dbo.transaction_category_seq as bigint 
                 increment by 1 
                     minvalue 1 
                   start with 1 
                     owned by dbo.user_feedback.user_feedback_id;                                                    


