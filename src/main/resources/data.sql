/*
 * Author      : Sarika Kondakindi
 * JIRA        : ELDHLP-67
 * Created Date: 2023-10-17
 * Description : DML to load data into entities dbo.address, dbo.users, dbo.bank_account,
 *               dbo.linked_payee, dbo.cards, dbo.user_login.
 */

/*
 * Modification History
 * 
 *  Date -------  JIRA  ---- Author ----------- Comments
 *  2023-10-17    ELDHLP-67  Sarika Kondakindi  dbo.address, dbo.users, dbo.bank_account,
 *                                              dbo.linked_payee, dbo.cards, dbo.user_login. 
 * 
 */

-------------*** dbo.address ***-------------
insert into dbo.address(address_id, perm_adr_unit_level_no, perm_adr_street_no, perm_adr_street_name, perm_adr_street_type, perm_adr_suburb, perm_adr_state, perm_adr_zip, perm_adr_country, mail_adr_unit_level_no, mail_adr_street_no, mail_adr_street_name, mail_address_street_type, mail_address_suburb, mail_address_state, mail_address_zip, mail_adr_country)
                 values(nextval('dbo.address_seq'), 1, 18, 'George Street', 'Avenue', 'Alexandria', 'NSW', '2013', 'Australia', 2, 15,  'Pitt Street', 'Boulevard', 'Hornsby', 'NSW', '2013', 'Australia');

insert into dbo.address(address_id, perm_adr_unit_level_no, perm_adr_street_no, perm_adr_street_name, perm_adr_street_type, perm_adr_suburb, perm_adr_state, perm_adr_zip, perm_adr_country, mail_adr_unit_level_no, mail_adr_street_no, mail_adr_street_name, mail_address_street_type, mail_address_suburb, mail_address_state, mail_address_zip, mail_adr_country)
                 values(nextval('dbo.address_seq'), 401, 2, 'Hunter Street', 'Alley', 'Parramatta', 'NSW', '2159', 'Australia', 401, 2, 'Hunter Street', 'Alley', 'Parramatta', 'NSW', '2159', 'Australia');

insert into dbo.address(address_id, perm_adr_unit_level_no, perm_adr_street_no, perm_adr_street_name, perm_adr_street_type, perm_adr_suburb, perm_adr_state, perm_adr_zip, perm_adr_country, mail_adr_unit_level_no, mail_adr_street_no, mail_adr_street_name, mail_address_street_type, mail_address_suburb, mail_address_state, mail_address_zip, mail_adr_country)
                 values(nextval('dbo.address_seq'), 19, 4, 'Campbell Street', 'Laneway', 'Bondi Junction', '2009', '2013', 'Australia', 19, 4, 'Campbell Street', 'Laneway', 'Bondi Junction', '2009', '2013', 'Australia');

insert into dbo.address(address_id, perm_adr_unit_level_no, perm_adr_street_no, perm_adr_street_name, perm_adr_street_type, perm_adr_suburb, perm_adr_state, perm_adr_zip, perm_adr_country, mail_adr_unit_level_no, mail_adr_street_no, mail_adr_street_name, mail_address_street_type, mail_address_suburb, mail_address_state, mail_address_zip, mail_adr_country)
                 values(nextval('dbo.address_seq'), 207, 7, 'Alfred Street', 'Drive', 'Darlinghurst', '2390', '2013', 'Australia', 207, 7, 'Alfred Street', 'Drive', 'Darlinghurst', '2390', '2013', 'Australia');

insert into dbo.address(address_id, perm_adr_unit_level_no, perm_adr_street_no, perm_adr_street_name, perm_adr_street_type, perm_adr_suburb, perm_adr_state, perm_adr_zip, perm_adr_country, mail_adr_unit_level_no, mail_adr_street_no, mail_adr_street_name, mail_address_street_type, mail_address_suburb, mail_address_state, mail_address_zip, mail_adr_country)
                 values(nextval('dbo.address_seq'), 518, 5, 'Crown Street', 'Precinct', 'Cronulla', '2910', '2013', 'Australia', 301, 15,  'Transit Street', 'Boulevard', 'Epping', 'NSW', '2910', 'Australia');

-------------*** dbo.users ***-------------                
insert into dbo.users(user_id, first_name, last_name, middle_name, person_title, date_of_birth, gender, email, phone_number, address_id)
			   values(nextval('dbo.users_seq'), 'Bella', 'Swan', 'Marie', 'Ms.', '1996-10-15', 'Female', 'bella.swan@gmail.com', '123456789', 1),
			         (nextval('dbo.users_seq'), 'Will', 'Smith', NULL, 'Mr.', '1981-03-18', 'Male', null, '987654321', 2),
			         (nextval('dbo.users_seq'), 'Ziva', 'David', 'Pablo', 'Ms.', '1991-04-29', 'Female', 'ziva.david@gmail.com', '911654321', 3),
			         (nextval('dbo.users_seq'), 'Gibbs', 'Leroy', 'Jethro', 'Mr.', '1992-06-03', 'Male', 'gibbs.jethro@gmail.com', '987114321', 4),
			         (nextval('dbo.users_seq'), 'Abby', 'Scuito', 'David', 'Ms.', '1989-09-21', 'Female', null, '987654111', 5);

-------------*** dbo.bank_account ***-------------
insert into dbo.bank_account(bank_account_id, bsb, security_pin, account_no, account_type, user_id, currency_type, balance, interest_rate, minimum_balance, is_joint_account, tfn, status, last_active_on)
                      values(nextval('dbo.bank_account_seq'), '123456', 'xxxx', '81923903', 'Current Account', 1, 'aud', 28391.50, 0.02, 300, false, '711838209', 'Active', current_date-1)
                      ,(nextval('dbo.bank_account_seq'), '456123', 'xxxx', '11923903', 'Current Account', 2, 'aud', 92308.50, 0.02, 300, false, null, 'Active',  current_date-2)
                      ,(nextval('dbo.bank_account_seq'), '321456', 'xxxx', '22923903', 'Savings Account', 3, 'aud', 12938.50, 0.03, 300, false, '911838209', 'Active', current_date-3)
                      ,(nextval('dbo.bank_account_seq'), '987345', 'xxxx', '31923903', 'Savings Account', 4, 'aud', 239187.50, 0.03, 300, false, '711839609', 'Active',  current_date-4)
                      ,(nextval('dbo.bank_account_seq'), '111267', 'xxxx', '41923903', 'Current Account', 5, 'aud', 103482.50, 0.02, 300, false, '711838211', 'Active', current_date-5);

-------------*** dbo.linked_payee ***-------------                  
insert into dbo.linked_payee(linked_payee_id, sender_bank_account_id, nick_name_of_payee, account_no, bsb, full_name_of_payee, bank_name)
                      values(nextval('dbo.linked_payee_seq'), 1, 'Isha', '92847133', '927483', 'Isha Reddy', 'Apple Bank Pty Ltd'),
                            (nextval('dbo.linked_payee_seq'), 1, 'Tom', '92847801', '018284', 'Tom Cullen', 'Custard Bank Pty Ltd'),
                            (nextval('dbo.linked_payee_seq'), 3, 'Ashly', '92847920', '302819', 'Ashley Brown', 'DEF Bank Pty Ltd'),
                            (nextval('dbo.linked_payee_seq'), 3, 'Akki', '92849208', '391737', 'Akki Taylor', 'XYZ Bank Pty Ltd'),
                            (nextval('dbo.linked_payee_seq'), 4, 'Sam', '92197108', '302090', 'Sam Smith', 'MNO Bank Pty Ltd');

-------------*** dbo.cards ***------------- 
insert into dbo.cards(card_id, card_number, account_id, expiry_date, cvv, name_on_card, card_type)
               values(nextval('dbo.cards_seq'), '8192019012341234', 1, '2033-09-01', '999', 'Bella Swan', 'Debit'),
                     (nextval('dbo.cards_seq'), '1234019012341234', 2, '2031-08-01', '123', 'Will Smith', 'Debit'),
                     (nextval('dbo.cards_seq'), '9999019012341234', 3, '2029-04-01', '456', 'Ziva David', 'Debit'),
                     (nextval('dbo.cards_seq'), '5678019012341234', 4, '2026-01-01', '789', 'Gibbs Leroy', 'Debit'),
                     (nextval('dbo.cards_seq'), '2345019012341234', 5, '2027-12-01', '800', 'Abby Scuito', 'Debit');
  
 