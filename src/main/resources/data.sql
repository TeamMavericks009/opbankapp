  insert into dbo.address(address_id, perm_addr_unit_level_no, perm_addr_street_no, perm_addr_street_name, perm_addr_street_type, perm_addr_suburb, perm_addr_state, perm_addr_zip, perm_addr_country, mail_addr_unit_level_no, mail_addr_street_no, mail_addr_street_name, mail_addr_street_type, mail_addr_suburb, mail_addr_state, mail_addr_zip, mail_addr_country)
                        values(nextval('dbo.address_seq'), 1, 18, 'George Street', 'Avenue', 'Alexandria', 'NSW', '2013', 'Australia', 2, 15,  'Pitt Street', 'Boulevard', 'Hornsby', 'NSW', '2013', 'Australia');

       insert into dbo.address(address_id, perm_addr_unit_level_no, perm_addr_street_no, perm_addr_street_name, perm_addr_street_type, perm_addr_suburb, perm_addr_state, perm_addr_zip, perm_addr_country, mail_addr_unit_level_no, mail_addr_street_no, mail_addr_street_name, mail_addr_street_type, mail_addr_suburb, mail_addr_state, mail_addr_zip, mail_addr_country)
                        values(nextval('dbo.address_seq'), 401, 2, 'Hunter Street', 'Alley', 'Parramatta', 'NSW', '2159', 'Australia', 401, 2, 'Hunter Street', 'Alley', 'Parramatta', 'NSW', '2159', 'Australia');

       insert into dbo.address(address_id, perm_addr_unit_level_no, perm_addr_street_no, perm_addr_street_name, perm_addr_street_type, perm_addr_suburb, perm_addr_state, perm_addr_zip, perm_addr_country, mail_addr_unit_level_no, mail_addr_street_no, mail_addr_street_name, mail_addr_street_type, mail_addr_suburb, mail_addr_state, mail_addr_zip, mail_addr_country)
                        values(nextval('dbo.address_seq'), 19, 4, 'Campbell Street', 'Laneway', 'Bondi Junction', '2009', '2013', 'Australia', 19, 4, 'Campbell Street', 'Laneway', 'Bondi Junction', '2009', '2013', 'Australia');

       insert into dbo.address(address_id, perm_addr_unit_level_no, perm_addr_street_no, perm_addr_street_name, perm_addr_street_type, perm_addr_suburb, perm_addr_state, perm_addr_zip, perm_addr_country, mail_addr_unit_level_no, mail_addr_street_no, mail_addr_street_name, mail_addr_street_type, mail_addr_suburb, mail_addr_state, mail_addr_zip, mail_addr_country)
                        values(nextval('dbo.address_seq'), 207, 7, 'Alfred Street', 'Drive', 'Darlinghurst', '2390', '2013', 'Australia', 207, 7, 'Alfred Street', 'Drive', 'Darlinghurst', '2390', '2013', 'Australia');

       insert into dbo.address(address_id, perm_addr_unit_level_no, perm_addr_street_no, perm_addr_street_name, perm_addr_street_type, perm_addr_suburb, perm_addr_state, perm_addr_zip, perm_addr_country, mail_addr_unit_level_no, mail_addr_street_no, mail_addr_street_name, mail_addr_street_type, mail_addr_suburb, mail_addr_state, mail_addr_zip, mail_addr_country)
                        values(nextval('dbo.address_seq'), 518, 5, 'Crown Street', 'Precinct', 'Cronulla', '2910', '2013', 'Australia', 301, 15,  'Transit Street', 'Boulevard', 'Epping', 'NSW', '2910', 'Australia');
            
       insert into dbo.users(user_id, user_name, first_name, last_name, middle_name, person_title, date_of_birth, gender, email, phone_number, address_id)
			          values(nextval('dbo.users_seq'), 'Bella3','Bella', 'Swan', 'Marie', 'Ms.', '1996-10-15', 'Female', 'bella.swan@gmail.com', '123456789', 1),
			                (nextval('dbo.users_seq'), 'Smith9', 'Will', 'Smith', NULL, 'Mr.', '1981-03-18', 'Male', null, '987654321', 2),
			                (nextval('dbo.users_seq'), 'Ziva', 'Ziva', 'David', 'Pablo', 'Ms.', '1991-04-29', 'Female', 'ziva.david@gmail.com', '911654321', 3),
			                (nextval('dbo.users_seq'), 'Gibbs005', 'Gibbs', 'Leroy', 'Jethro', 'Mr.', '1992-06-03', 'Male', 'gibbs.jethro@gmail.com', '987114321', 4),
			                (nextval('dbo.users_seq'), 'Abby11', 'Abby', 'Scuito', 'David', 'Ms.', '1989-09-21', 'Female', null, '987654111', 5);


       insert into dbo.bank_account(bank_account_id, bsb/*, security_pin*/, account_no, account_type, user_id, currency_type, balance, interest_rate, minimum_balance, is_joint_account, tfn, status, last_active_on)
                             values(nextval('dbo.bank_account_seq')/*, '123456'*/, 'xxxx', '81923903', 'Current Account', 1, 'aud', 28391.50, 0.02, 300, false, '711838209', 'Active', current_date-1)
                                  ,(nextval('dbo.bank_account_seq')/*, '456123'*/, 'xxxx', '11923903', 'Current Account', 2, 'aud', 92308.50, 0.02, 300, false, null, 'Active',  current_date-2)
                                  ,(nextval('dbo.bank_account_seq')/*, '321456'*/, 'xxxx', '22923903', 'Savings Account', 3, 'aud', 12938.50, 0.03, 300, false, '911838209', 'Active', current_date-3)
                                  ,(nextval('dbo.bank_account_seq')/*, '987345'*/, 'xxxx', '31923903', 'Savings Account', 4, 'aud', 239187.50, 0.03, 300, false, '711839609', 'Active',  current_date-4)
                                  ,(nextval('dbo.bank_account_seq')/*, '111267'*/, 'xxxx', '41923903', 'Current Account', 5, 'aud', 103482.50, 0.02, 300, false, '711838211', 'Active', current_date-5);
               

     
             
       insert into dbo.linked_payee(linked_payee_id, sender_bank_account_id, nick_name_of_payee, account_no, bsb, full_name_of_payee, bank_name)
                             values(nextval('dbo.linked_payee_seq'), 1, 'Isha', '92847133', '927483', 'Isha Reddy', 'Apple Bank Pty Ltd'),
                                   (nextval('dbo.linked_payee_seq'), 1, 'Tom', '92847801', '018284', 'Tom Cullen', 'Custard Bank Pty Ltd'),
                                   (nextval('dbo.linked_payee_seq'), 3, 'Ashly', '92847920', '302819', 'Ashley Brown', 'DEF Bank Pty Ltd'),
                                   (nextval('dbo.linked_payee_seq'), 3, 'Akki', '92849208', '391737', 'Akki Taylor', 'XYZ Bank Pty Ltd'),
                                   (nextval('dbo.linked_payee_seq'), 4, 'Sam', '92197108', '302090', 'Sam Smith', 'MNO Bank Pty Ltd');

               

	                 
       insert into dbo.cards(card_id, card_number, account_id, expiry_date, cvv, name_on_card, card_type)
                      values(nextval('dbo.cards_seq'), '8192019012341234', 1, '2033-09-01', '999', 'Bella Swan', 'Debit'),
                            (nextval('dbo.cards_seq'), '1234019012341234', 2, '2031-08-01', '123', 'Will Smith', 'Debit'),
                            (nextval('dbo.cards_seq'), '9999019012341234', 3, '2029-04-01', '456', 'Ziva David', 'Debit'),
                            (nextval('dbo.cards_seq'), '5678019012341234', 4, '2026-01-01', '789', 'Gibbs Leroy', 'Debit'),
                            (nextval('dbo.cards_seq'), '2345019012341234', 5, '2027-12-01', '800', 'Abby Scuito', 'Debit');
  
       insert into dbo.user_login 
       select user_id as user_login_id,user_name,--, coalesce(email, phone_number) as user_id, 
              crypt(first_name||right(phone_number,4), gen_salt('bf')), current_date-2/*,'182.189.12.53' */,'1234' AS security_pin-- , concat(first_name||' ', last_name) as user_name
         from dbo.users;
         
         update user_login set encrypted_password = '1234' where user_name = 'Bella3';
       
       insert into dbo.user_login_history(user_login_history_id, user_login_id,user_name/*, login_id*/, encrypted_password, pswd_last_modified_on /*, ip_address */, security_pin/*, user_name*//*, last_login_date, last_logout_date*/, record_status)
       select nextval('dbo.user_login_history_seq'),user_login_id,user_name/*,login_id*/, encrypted_password, pswd_last_modified_on/*,ip_address */,security_pin/*, user_name*/ /*, current_date-2, current_date-1*/,'I'
         from dbo.user_login;

   
       insert into dbo.user_registration(user_registration_id, user_name/*, temp_request_id*/, account_reset_flag, bank_account_id, temp_password, "password",security_pin)
       select nextval('dbo.user_registration_seq'), user_name/*, 1*/,false, 1, encrypted_password ,encrypted_password  ,security_pin
         from dbo.user_login ul ;

   

       insert into dbo.bank(bank_id, bank_name, address, branch_name, branch_code, branch_manager)
                     values(nextval('dbo.bank_seq'), 'Domm Bank', 'Sydney', 'New Lambton Branch', 'NLB', 'Charlotte Baker')
                          ,(nextval('dbo.bank_seq'), 'DEF Bank', 'Sydney', 'New Lambton Branch', 'NLB', 'Leo Smith')
                          ,(nextval('dbo.bank_seq'), 'AOP Bank', 'Sydney', 'New Lambton Branch', 'NLB', 'Olivia Lee')
                          ,(nextval('dbo.bank_seq'), 'NPL Bank', 'Sydney', 'Adamstown Branch', 'ASB', 'Noah Martin')
                          ,(nextval('dbo.bank_seq'), 'PQI Bank', 'Sydney', 'Adamstown Branch', 'ASB', 'Leo Lee');
	                


       insert into dbo.user_feedback(user_feedback_id, feedback_type, feedback_header, description, "comments")
                              values(nextval('dbo.user_feedback_seq'), 'Bug Report'::character varying, 'Page Crashes on Startup', 'The application crashes immediately upon launching. I''m using Windows 10.', '')
                                   ,(nextval('dbo.user_feedback_seq'), 'Feature Request'::character varying, 'Button for Recent Transactions', 'I want to see recent transactions', '')
                                   ,(nextval('dbo.user_feedback_seq'), 'General Feedback'::character varying, 'User Interface Colors', 'User Interaface colors are good', '')
                                   ,(nextval('dbo.user_feedback_seq'), 'Enhancement Suggestion'::character varying, 'Color Customization', 'I want to customize the colors', '')
                                   ,(nextval('dbo.user_feedback_seq'), 'Usability Problem'::character varying, 'Fonts too small', 'I am unable to view the data on screens due to small fonts', '')
                                   ,(nextval('dbo.user_feedback_seq'), 'Privacy Concern'::character varying, 'Who has access to my data', 'I want to know who can access my data', '');

       insert into dbo.sessions(session_id, user_id, session_start_date, session_stop_date)
                         values(nextval('dbo.sessions_seq'), 1, '2023-10-17 13:11:12', '2023-10-17 13:14:12')
                              ,(nextval('dbo.sessions_seq'), 2, '2023-10-18 17:11:12', '2023-10-18 17:14:12')
                              ,(nextval('dbo.sessions_seq'), 3, '2023-10-19 16:14:12', '2023-10-19 16:15:12')
                              ,(nextval('dbo.sessions_seq'), 4, '2023-10-20 11:11:12', '2023-10-20 11:14:12')
                              ,(nextval('dbo.sessions_seq'), 5, '2023-10-21 13:11:12', '2023-10-21 13:14:12');

       
       truncate table dbo.bot_response_history; 
	   insert into dbo.bot_response_history(bot_response_history_id, session_id, user_request, bot_response, user_id)
                                     values(nextval('dbo.bot_response_history_seq'), 1, 'How to generate statement', 'Go to My Transactions >> Generate Statements', 1)
    								      ,(nextval('dbo.bot_response_history_seq'), 2, 'view profile data', 'Go to Home >> Profile', 2)
    								      ,(nextval('dbo.bot_response_history_seq'), 3, 'Settings', 'Go to Home >> Settings', 3)
    								      ,(nextval('dbo.bot_response_history_seq'), 4, 'Logout', 'Go to Home >> Logout', 4)
    								      ,(nextval('dbo.bot_response_history_seq'), 5, 'Account details', 'Go to Home >> Accounts', 5);
              

  
       insert into dbo.error_log(error_log_id, error_type, error_name, error_description, error_code)
                          values(nextval('dbo.error_log_seq'),'Error', 'Error on Script Run','o.h.t.s.i.ExceptionHandlerLoggedImpl     : GenerationTarget encountered exception accepting command : Error executing DDL "alter table if exists bank_account alter column last_active_on set data type timestamp(6)" via JDBC [ERROR: column "last_active_on" cannot be cast automatically to type timestamp without time zone  Hint: You might need to specify "USING last_active_on::timestamp(6) without time zone".]','EOSR'),
                                (nextval('dbo.error_log_seq'),'Exception', 'Null Value Exception','Cannot insert null into a not null column','NVE'),
                                (nextval('dbo.error_log_seq'),'Warning', 'Table already exists.','','TAE'),
                                (nextval('dbo.error_log_seq'),'Error', 'Length exceeds','Column name cannot be greater than 30 characters','CN30'),
                                (nextval('dbo.error_log_seq'),'Error', 'User Name Length','User Name cannot be greater than 30 characters','UN30');


       insert into dbo.user_preferences(user_preference_id, user_id, view_type, panel_customization, font_size, font_type, font_colour)
                                 values(nextval('dbo.user_preferences_seq'), 1, 'L', 'L', 16, 'Times New Roman', 'White'),
                                       (nextval('dbo.user_preferences_seq'), 2, 'L', 'L', 16, 'Arial', 'White'),
                                       (nextval('dbo.user_preferences_seq'), 3, 'L', 'L', 16, 'Calibri', 'White'),
                                       (nextval('dbo.user_preferences_seq'), 4, 'L', 'L', 16, 'Times New Roman', 'Black'),
                                       (nextval('dbo.user_preferences_seq'), 5, 'L', 'L', 16, 'Times New Roman', 'White');

 
       insert into dbo.transaction_category(transaction_category_id, category, description)
                                     values(nextval('dbo.transaction_category_seq'), 'Deposit', 'Money deposited into account.'),
                                           (nextval('dbo.transaction_category_seq'), 'Withdrawal', 'Money withdrawed from account.'),
                                           (nextval('dbo.transaction_category_seq'), 'Transfer', 'Bank transfer.'),
                                           (nextval('dbo.transaction_category_seq'), 'Interest Earned', 'Interest earned on account.'),
                                           (nextval('dbo.transaction_category_seq'), 'Fee Charge', 'Debit excess fee.');

       insert into dbo.transaction_type(transaction_type_id, transaction_type)
                                 values(nextval('dbo.transaction_type_seq'),'Debit'),
                                       (nextval('dbo.transaction_type_seq'),'Credit');


       insert into dbo.transactions(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description)
                              values(nextval('dbo.transactions_seq'),1,1,1,2,20.30, 1,200.30,'Success', 1, '2023-11-02 12:01:02','Money Transfer' ),
                                    (nextval('dbo.transactions_seq'),2,2,2,1,20.30, 2,200.30,'Success', 2, '2023-11-04 12:01:02','Money Transfer' ),
                                    (nextval('dbo.transactions_seq'),3,3,3,1,20.30, 3,200.30,'Success', 3, '2023-11-05 12:01:02','Money Transfer' ),
                                    (nextval('dbo.transactions_seq'),4,4,4,2,20.30, 4,200.30,'Success', 4, '2023-11-03 12:01:02','Money Transfer' ),
                                    (nextval('dbo.transactions_seq'),5,5,3,1,20.30, 5,200.30,'Success', 5, '2023-11-05 12:01:02','Money Transfer' ),
								    (nextval('dbo.transactions_seq'),2,1,3,1,50.30, 1,150.00,'Success', 1, '2023-11-06 15:07:08','Money Transfer' ),
								    (nextval('dbo.transactions_seq'),3,1,3,2,70.00, 3,220.00,'Success', 1, '2023-11-01 09:13:15','Money Transfer' );
