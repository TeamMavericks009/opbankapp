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
                             values(nextval('dbo.bank_account_seq')/*, '123456'*/, '8456', '81923903', 'Current Account', 1, 'aud', 28391.50, 0.02, 300, false, '711838209', 'Active', current_date-1)
                                  ,(nextval('dbo.bank_account_seq')/*, '456123'*/, '4684', '11923903', 'Current Account', 2, 'aud', 92308.50, 0.02, 300, false, null, 'Active',  current_date-2)
                                  ,(nextval('dbo.bank_account_seq')/*, '321456'*/, '7256', '22923903', 'Savings Account', 3, 'aud', 12938.50, 0.03, 300, false, '911838209', 'Active', current_date-3)
                                  ,(nextval('dbo.bank_account_seq')/*, '987345'*/, '6286', '31923903', 'Savings Account', 4, 'aud', 239187.50, 0.03, 300, false, '711839609', 'Active',  current_date-4)
                                  ,(nextval('dbo.bank_account_seq')/*, '111267'*/, '7356', '41923903', 'Current Account', 5, 'aud', 103482.50, 0.02, 300, false, '711838211', 'Active', current_date-5);
               

     
             
       insert into dbo.linked_payee(linked_payee_id, sender_bank_account_id, nick_name_of_payee, account_no, bsb, full_name_of_payee, bank_name)
                             values(nextval('dbo.linked_payee_seq'), 1, 'Isha', '92847133', '927483', 'Isha Reddy', 'Apple Bank Pty Ltd'),
                                   (nextval('dbo.linked_payee_seq'), 1, 'Tom', '92847801', '018284', 'Tom Cullen', 'Custard Bank Pty Ltd'),
                                   (nextval('dbo.linked_payee_seq'), 3, 'Ashly', '92847920', '302819', 'Ashley Brown', 'DEF Bank Pty Ltd'),
                                   (nextval('dbo.linked_payee_seq'), 3, 'Akki', '92849208', '391737', 'Akki Taylor', 'XYZ Bank Pty Ltd'),
                                   (nextval('dbo.linked_payee_seq'), 4, 'Sam', '92197108', '302090', 'Sam Smith', 'MNO Bank Pty Ltd');

               



select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Bella3',
piv_nick_name_of_payee =>  'Henry', 
piv_account_no => '93197888',
piv_bsb  => '402860',
piv_full_name_of_payee => 'Henry Thompson',
piv_bank_name => 'Metro Financial Pty Ltd'

) ;

 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Bella3',
piv_nick_name_of_payee =>  'David', 
piv_account_no => '93197102',
piv_bsb  => '473560',
piv_full_name_of_payee => 'David Wilson',
piv_bank_name => 'Capital Financial Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Bella3',
piv_nick_name_of_payee =>  'Oliver', 
piv_account_no => '93120196',
piv_bsb  => '409266',
piv_full_name_of_payee => 'Oliver Nguyen',
piv_bank_name => 'Heritage Financial Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Bella3',
piv_nick_name_of_payee =>  'Lucas', 
piv_account_no => '93197920',
piv_bsb  => '402203',
piv_full_name_of_payee => 'Lucas Brown',
piv_bank_name => 'United Street Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Bella3',
piv_nick_name_of_payee =>  'Theodore', 
piv_account_no => '93197888',
piv_bsb  => '402860',
piv_full_name_of_payee => 'Theodore Smith',
piv_bank_name => 'Digital Finance Group Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Bella3',
piv_nick_name_of_payee =>  'James', 
piv_account_no => '93192308',
piv_bsb  => '501030',
piv_full_name_of_payee => 'James Ryan',
piv_bank_name => 'Metro Financial Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Bella3',
piv_nick_name_of_payee =>  'James N', 
piv_account_no => '93197047',
piv_bsb  => '493860',
piv_full_name_of_payee => 'James Nguyen' ,
piv_bank_name => 'Cyber One Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Bella3',
piv_nick_name_of_payee =>  'Henry N', 
piv_account_no => '93190396',
piv_bsb  => '401836',
piv_full_name_of_payee => 'Henry Nguyen',
piv_bank_name => 'Capital Growth Bank Pty Ltd'

) ;


select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Smith9',
piv_nick_name_of_payee =>  'Daniel', 
piv_account_no => '99936798',
piv_bsb  => '401556',
piv_full_name_of_payee => 'Daniel Turner',
piv_bank_name => 'Choice Financial Pty Ltd'

) ;

 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Smith9',
piv_nick_name_of_payee =>  'Thomas H', 
piv_account_no => '93199865',
piv_bsb  => '573570',
piv_full_name_of_payee => 'Thomas Harris',
piv_bank_name => 'Bank of Australia Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Smith9',
piv_nick_name_of_payee =>  'Jack', 
piv_account_no => '93129866',
piv_bsb  => '609268',
piv_full_name_of_payee => 'Jack White',
piv_bank_name => 'Wealth Financial Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Smith9',
piv_nick_name_of_payee =>  'James T', 
piv_account_no => '93199706',
piv_bsb  => '702733',
piv_full_name_of_payee => 'James Taylor',
piv_bank_name => 'Wealth Common Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Smith9',
piv_nick_name_of_payee =>  'William S', 
piv_account_no => '93197668',
piv_bsb  => '802960',
piv_full_name_of_payee => 'William Smith',
piv_bank_name => 'Bank of Macquarie Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Smith9',
piv_nick_name_of_payee =>  'William D', 
piv_account_no => '93197669',
piv_bsb  => '201230',
piv_full_name_of_payee => 'William Davis',
piv_bank_name => 'Digi Corp Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Smith9',
piv_nick_name_of_payee =>  'Sophia A', 
piv_account_no => '93197670',
piv_bsb  => '393930',
piv_full_name_of_payee => 'Sophia Anderson' ,
piv_bank_name => 'Metro Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Smith9',
piv_nick_name_of_payee =>  'Lily T', 
piv_account_no => '93197671',
piv_bsb  => '601874',
piv_full_name_of_payee => 'Lily Turner',
piv_bank_name => 'Choice Growth Bank Pty Ltd'

) ;




select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Gibbs005',
piv_nick_name_of_payee =>  'Ella M', 
piv_account_no => '24897536',
piv_bsb  => '134869',
piv_full_name_of_payee => 'Ella Martin',
piv_bank_name => 'Crown Savings Pty Ltd'

) ;

 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Gibbs005',
piv_nick_name_of_payee =>  'Avery', 
piv_account_no => '71359284',
piv_bsb  => '978652',
piv_full_name_of_payee => 'Avery Martin',
piv_bank_name => 'Bank of Beacon Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Gibbs005',
piv_nick_name_of_payee =>  'Charlie', 
piv_account_no => '56481279',
piv_bsb  => '574892',
piv_full_name_of_payee => 'Charles Martin',
piv_bank_name => 'Silver Financial Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Gibbs005',
piv_nick_name_of_payee =>  'Christopher B', 
piv_account_no => '93784615',
piv_bsb  => '937846',
piv_full_name_of_payee => 'Christopher Brown',
piv_bank_name => 'Wealth Liberty Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Gibbs005',
piv_nick_name_of_payee =>  'Christopher J', 
piv_account_no => '36854792',
piv_bsb  => '368547',
piv_full_name_of_payee => 'Christopher Johnson',
piv_bank_name => 'Liberty Savings Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Gibbs005',
piv_nick_name_of_payee =>  'Scarlett A', 
piv_account_no => '64271938',
piv_bsb  => '642719',
piv_full_name_of_payee => 'Scarlett Anderson',
piv_bank_name => 'Royal Summit Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Gibbs005',
piv_nick_name_of_payee =>  'Michael T', 
piv_account_no => '57289361',
piv_bsb  => '572893',
piv_full_name_of_payee => 'Michael Taylor' ,
piv_bank_name => 'Financial Pacific Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Gibbs005',
piv_nick_name_of_payee =>  'Samuel H', 
piv_account_no => '41879623',
piv_bsb  => '418796',
piv_full_name_of_payee => 'Samuel Hall',
piv_bank_name => 'Greenleaf National Bank Pty Ltd'

) ;




select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Abby11',
piv_nick_name_of_payee =>  'Mason C', 
piv_account_no => '46821975',
piv_bsb  => '123789',
piv_full_name_of_payee => 'Mason Carter',
piv_bank_name => 'Crown Beacon Pty Ltd'

) ;

 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Abby11',
piv_nick_name_of_payee =>  'David Prkr', 
piv_account_no => '75319824',
piv_bsb  => '987542',
piv_full_name_of_payee => 'David Parker',
piv_bank_name => 'Bank of Wealth Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Abby11',
piv_nick_name_of_payee =>  'Matthew Prkr', 
piv_account_no => '61274983',
piv_bsb  => '674123',
piv_full_name_of_payee => 'Matthew Parker',
piv_bank_name => 'Gold Financial Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Abby11',
piv_nick_name_of_payee =>  'Christopher Nls', 
piv_account_no => '89473621',
piv_bsb  => '819356',
piv_full_name_of_payee => 'Christopher Nelson',
piv_bank_name => 'Wealth Charity Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Abby11',
piv_nick_name_of_payee =>  'Benjamin J', 
piv_account_no => '32751894',
piv_bsb  => '235814',
piv_full_name_of_payee => 'Benjamin Johnson',
piv_bank_name => 'Liberty Link Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Abby11',
piv_nick_name_of_payee =>  'Scarlett R', 
piv_account_no => '64972381',
piv_bsb  => '642379',
piv_full_name_of_payee => 'Scarlett Reed',
piv_bank_name => 'Summit Royal Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Abby11',
piv_nick_name_of_payee =>  'Benjamin T', 
piv_account_no => '83491726',
piv_bsb  => '378916',
piv_full_name_of_payee => 'Benjamin Taylor' ,
piv_bank_name => 'Pacific Financial Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Abby11',
piv_nick_name_of_payee =>  'Ava F', 
piv_account_no => '92684371',
piv_bsb  => '924561',
piv_full_name_of_payee => 'Ava Foster',
piv_bank_name => 'National Greenleaf Bank Pty Ltd'

) ;





select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Ziva',
piv_nick_name_of_payee =>  'Sarah B', 
piv_account_no => '41060987',
piv_bsb  => '574890',
piv_full_name_of_payee => 'Sarah Brown',
piv_bank_name => 'Sunrise Savings Pty Ltd'

) ;

 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Ziva',
piv_nick_name_of_payee =>  'Davie', 
piv_account_no => '13579268',
piv_bsb  => '812456',
piv_full_name_of_payee => 'David Brown',
piv_bank_name => 'Bank of Australia Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Ziva',
piv_nick_name_of_payee =>  'Charlie', 
piv_account_no => '98743125',
piv_bsb  => '236598',
piv_full_name_of_payee => 'Charles Martin',
piv_bank_name => 'Wealth Financial Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Ziva',
piv_nick_name_of_payee =>  'James T', 
piv_account_no => '57290846',
piv_bsb  => '642183',
piv_full_name_of_payee => 'James Taylor',
piv_bank_name => 'Wealth Common Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Ziva',
piv_nick_name_of_payee =>  'Lukie', 
piv_account_no => '81927453',
piv_bsb  => '375926',
piv_full_name_of_payee => 'Luke Taylor',
piv_bank_name => 'Coastal Savings Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Ziva',
piv_nick_name_of_payee =>  'Ethio', 
piv_account_no => '23659647',
piv_bsb  => '423819',
piv_full_name_of_payee => 'Ethan Anderson',
piv_bank_name => 'Royal National Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Ziva',
piv_nick_name_of_payee =>  'Ethan Br', 
piv_account_no => '37592684',
piv_bsb  => '798514',
piv_full_name_of_payee => 'Ethan Brown' ,
piv_bank_name => 'Pacific Bank Pty Ltd'

) ;
 select   dbo.fnc_insert_sample_data_linked_payee(piv_user_name => 'Ziva',
piv_nick_name_of_payee =>  'Mia T', 
piv_account_no => '42381957',
piv_bsb  => '459287',
piv_full_name_of_payee => 'Mia Taylor',
piv_bank_name => 'Union Growth Bank Pty Ltd'

) ;



	                 
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

/*
       insert into dbo.transactions(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description)
                              values(nextval('dbo.transactions_seq'),8642753109,1,1,2,20.30, 1,200.30,'Success', 1, '2023-11-02 12:01:02','Money Transfer' ),
                                    (nextval('dbo.transactions_seq'),8742309615,2,2,1,20.30, 2,200.30,'Success', 2, '2023-11-04 12:01:02','Money Transfer' ),
                                    (nextval('dbo.transactions_seq'),6923147805,3,3,1,20.30, 3,200.30,'Success', 3, '2023-11-05 12:01:02','Money Transfer' ),
                                    (nextval('dbo.transactions_seq'),5396821470,4,4,2,20.30, 4,200.30,'Success', 4, '2023-11-03 12:01:02','Money Transfer' ),
                                    (nextval('dbo.transactions_seq'),2358417690,5,3,1,20.30, 5,200.30,'Success', 5, '2023-11-05 12:01:02','Money Transfer' ),
								    (nextval('dbo.transactions_seq'),8642753110,1,3,1,50.30, 1,150.00,'Success', 1, '2023-11-06 15:07:08','Money Transfer' ),
								    (nextval('dbo.transactions_seq'),8642753111,1,3,2,70.00, 3,220.00,'Success', 1, '2023-11-01 09:13:15','Money Transfer' );
*/

INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(254, 37564657, 1, 2, 1, 52.0000, 1, 948.0000, 'Success', 1, '2023-08-11 21:24:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(255, 37564658, 1, 3, 1, 82.0000, 1, 866.0000, 'Success', 1, '2023-08-15 12:32:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(256, 37564659, 1, 4, 2, 30.0000, 1, 896.0000, 'Success', 1, '2023-08-19 03:40:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(257, 37564660, 1, 3, 1, 46.0000, 2, 850.0000, 'Success', 1, '2023-08-22 18:48:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(258, 37564661, 1, 5, 1, 5.0000, 2, 845.0000, 'Success', 1, '2023-08-26 09:56:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(259, 37564662, 1, 5, 1, 5.0000, 1, 840.0000, 'Success', 1, '2023-08-30 01:04:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(260, 37564663, 1, 5, 1, 5.0000, 1, 835.0000, 'Success', 1, '2023-09-01 00:00:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(261, 37564664, 1, 3, 2, 7504.0000, 1, 8339.0000, 'Success', 1, '2023-09-04 15:08:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(262, 37564665, 1, 3, 2, 174.0000, 2, 8513.0000, 'Success', 1, '2023-09-08 06:16:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(263, 37564666, 1, 3, 2, 5350.0000, 1, 13863.0000, 'Success', 1, '2023-09-11 21:24:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(264, 37564667, 1, 4, 2, 30.0000, 1, 13893.0000, 'Success', 1, '2023-09-15 12:32:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(265, 37564668, 1, 3, 2, 3245.0000, 2, 17138.0000, 'Success', 1, '2023-09-19 03:40:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(266, 37564669, 1, 3, 2, 3787.0000, 1, 20925.0000, 'Success', 1, '2023-09-22 18:48:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(267, 37564670, 1, 4, 2, 30.0000, 1, 20955.0000, 'Success', 1, '2023-09-26 09:56:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(268, 37564671, 1, 5, 1, 5.0000, 2, 20950.0000, 'Success', 1, '2023-10-01 00:00:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(269, 37564672, 1, 2, 1, 55.0000, 1, 20895.0000, 'Success', 1, '2023-10-04 15:08:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(270, 37564673, 1, 2, 1, 21.0000, 1, 20874.0000, 'Success', 1, '2023-10-08 06:16:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(271, 37564674, 1, 2, 1, 35.0000, 2, 20839.0000, 'Success', 1, '2023-10-11 21:24:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(272, 37564675, 1, 5, 1, 5.0000, 1, 20834.0000, 'Success', 1, '2023-10-15 12:32:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(273, 37564676, 1, 4, 2, 30.0000, 1, 20864.0000, 'Success', 1, '2023-10-19 03:40:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(274, 37564677, 1, 5, 1, 5.0000, 1, 20859.0000, 'Success', 1, '2023-10-22 18:48:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(275, 37564678, 1, 4, 2, 30.0000, 2, 20889.0000, 'Success', 1, '2023-10-26 09:56:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(276, 37564679, 1, 3, 1, 13.0000, 2, 20876.0000, 'Success', 1, '2023-10-30 01:04:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(277, 37564680, 1, 2, 1, 83.0000, 2, 20793.0000, 'Success', 1, '2023-11-01 00:00:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(278, 37564681, 1, 4, 2, 30.0000, 1, 20823.0000, 'Success', 1, '2023-11-04 15:08:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(279, 37564657, 2, 3, 1, 15.0000, NULL, 985.0000, 'Success', 2, '2023-08-11 21:24:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(280, 37564658, 2, 3, 1, 67.0000, NULL, 918.0000, 'Success', 2, '2023-08-15 12:32:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(281, 37564659, 2, 3, 2, 6112.0000, NULL, 7030.0000, 'Success', 2, '2023-08-19 03:40:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(282, 37564660, 2, 2, 1, 18.0000, NULL, 7012.0000, 'Success', 2, '2023-08-22 18:48:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(283, 37564661, 2, 4, 2, 30.0000, NULL, 7042.0000, 'Success', 2, '2023-08-26 09:56:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(284, 37564662, 2, 1, 2, 502.0000, NULL, 7544.0000, 'Success', 2, '2023-08-30 01:04:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(285, 37564663, 2, 2, 1, 94.0000, NULL, 7450.0000, 'Success', 2, '2023-09-01 00:00:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(286, 37564664, 2, 3, 2, 3532.0000, NULL, 10982.0000, 'Success', 2, '2023-09-04 15:08:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(287, 37564665, 2, 5, 1, 5.0000, NULL, 10977.0000, 'Success', 2, '2023-09-08 06:16:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(288, 37564666, 2, 4, 2, 30.0000, NULL, 11007.0000, 'Success', 2, '2023-09-11 21:24:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(289, 37564667, 2, 3, 2, 4319.0000, NULL, 15326.0000, 'Success', 2, '2023-09-15 12:32:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(290, 37564668, 2, 3, 2, 2786.0000, NULL, 18112.0000, 'Success', 2, '2023-09-19 03:40:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(291, 37564669, 2, 2, 1, 20.0000, NULL, 18092.0000, 'Success', 2, '2023-09-22 18:48:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(292, 37564670, 2, 3, 2, 9356.0000, NULL, 27448.0000, 'Success', 2, '2023-09-26 09:56:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(293, 37564671, 2, 2, 1, 95.0000, NULL, 27353.0000, 'Success', 2, '2023-10-01 00:00:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(294, 37564672, 2, 3, 2, 7978.0000, NULL, 35331.0000, 'Success', 2, '2023-10-04 15:08:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(295, 37564673, 2, 4, 2, 30.0000, NULL, 35361.0000, 'Success', 2, '2023-10-08 06:16:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(296, 37564674, 2, 3, 2, 8940.0000, NULL, 44301.0000, 'Success', 2, '2023-10-11 21:24:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(297, 37564675, 2, 3, 1, 47.0000, NULL, 44254.0000, 'Success', 2, '2023-10-15 12:32:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(298, 37564676, 2, 5, 1, 5.0000, NULL, 44249.0000, 'Success', 2, '2023-10-19 03:40:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(299, 37564677, 2, 3, 1, 52.0000, NULL, 44197.0000, 'Success', 2, '2023-10-22 18:48:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(300, 37564678, 2, 3, 1, 54.0000, NULL, 44143.0000, 'Success', 2, '2023-10-26 09:56:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(301, 37564679, 2, 4, 2, 30.0000, NULL, 44173.0000, 'Success', 2, '2023-10-30 01:04:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(302, 37564680, 2, 2, 1, 19.0000, NULL, 44154.0000, 'Success', 2, '2023-11-01 00:00:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(303, 37564681, 2, 4, 2, 30.0000, NULL, 44184.0000, 'Success', 2, '2023-11-04 15:08:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(304, 37564657, 3, 5, 1, 5.0000, 3, 995.0000, 'Success', 3, '2023-08-11 21:24:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(305, 37564658, 3, 1, 2, 5747.0000, 3, 6742.0000, 'Success', 3, '2023-08-15 12:32:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(306, 37564659, 3, 3, 1, 85.0000, 4, 6657.0000, 'Success', 3, '2023-08-19 03:40:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(307, 37564660, 3, 3, 1, 81.0000, 4, 6576.0000, 'Success', 3, '2023-08-22 18:48:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(308, 37564661, 3, 3, 2, 7733.0000, 4, 14309.0000, 'Success', 3, '2023-08-26 09:56:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(309, 37564662, 3, 3, 2, 5912.0000, 3, 20221.0000, 'Success', 3, '2023-08-30 01:04:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(310, 37564663, 3, 5, 1, 5.0000, 4, 20216.0000, 'Success', 3, '2023-09-01 00:00:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(311, 37564664, 3, 3, 2, 5454.0000, 3, 25670.0000, 'Success', 3, '2023-09-04 15:08:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(312, 37564665, 3, 3, 1, 75.0000, 3, 25595.0000, 'Success', 3, '2023-09-08 06:16:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(313, 37564666, 3, 2, 1, 41.0000, 3, 25554.0000, 'Success', 3, '2023-09-11 21:24:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(314, 37564667, 3, 5, 1, 5.0000, 4, 25549.0000, 'Success', 3, '2023-09-15 12:32:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(315, 37564668, 3, 1, 2, 7313.0000, 3, 32862.0000, 'Success', 3, '2023-09-19 03:40:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(316, 37564669, 3, 5, 1, 5.0000, 4, 32857.0000, 'Success', 3, '2023-09-22 18:48:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(317, 37564670, 3, 4, 2, 30.0000, 3, 32887.0000, 'Success', 3, '2023-09-26 09:56:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(318, 37564671, 3, 3, 1, 75.0000, 4, 32812.0000, 'Success', 3, '2023-10-01 00:00:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(319, 37564672, 3, 4, 2, 30.0000, 3, 32842.0000, 'Success', 3, '2023-10-04 15:08:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(320, 37564673, 3, 3, 1, 81.0000, 3, 32761.0000, 'Success', 3, '2023-10-08 06:16:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(321, 37564674, 3, 3, 1, 27.0000, 3, 32734.0000, 'Success', 3, '2023-10-11 21:24:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(322, 37564675, 3, 3, 2, 7519.0000, 4, 40253.0000, 'Success', 3, '2023-10-15 12:32:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(323, 37564676, 3, 1, 2, 5716.0000, 3, 45969.0000, 'Success', 3, '2023-10-19 03:40:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(324, 37564677, 3, 3, 1, 27.0000, 3, 45942.0000, 'Success', 3, '2023-10-22 18:48:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(325, 37564678, 3, 3, 2, 8872.0000, 3, 54814.0000, 'Success', 3, '2023-10-26 09:56:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(326, 37564679, 3, 4, 2, 30.0000, 3, 54844.0000, 'Success', 3, '2023-10-30 01:04:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(327, 37564680, 3, 5, 1, 5.0000, 3, 54839.0000, 'Success', 3, '2023-11-01 00:00:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(328, 37564681, 3, 2, 1, 39.0000, 3, 54800.0000, 'Success', 3, '2023-11-04 15:08:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(329, 37564657, 4, 2, 1, 49.0000, 5, 951.0000, 'Success', 4, '2023-08-11 21:24:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(330, 37564658, 4, 5, 1, 5.0000, 5, 946.0000, 'Success', 4, '2023-08-15 12:32:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(331, 37564659, 4, 1, 2, 3916.0000, 5, 4862.0000, 'Success', 4, '2023-08-19 03:40:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(332, 37564660, 4, 3, 2, 7175.0000, 5, 12037.0000, 'Success', 4, '2023-08-22 18:48:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(333, 37564661, 4, 5, 1, 5.0000, 5, 12032.0000, 'Success', 4, '2023-08-26 09:56:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(334, 37564662, 4, 3, 1, 44.0000, 5, 11988.0000, 'Success', 4, '2023-08-30 01:04:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(335, 37564663, 4, 4, 2, 30.0000, 5, 12018.0000, 'Success', 4, '2023-09-01 00:00:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(336, 37564664, 4, 3, 2, 6796.0000, 5, 18814.0000, 'Success', 4, '2023-09-04 15:08:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(337, 37564665, 4, 1, 2, 2295.0000, 5, 21109.0000, 'Success', 4, '2023-09-08 06:16:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(338, 37564666, 4, 4, 2, 30.0000, 5, 21139.0000, 'Success', 4, '2023-09-11 21:24:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(339, 37564667, 4, 2, 1, 69.0000, 5, 21070.0000, 'Success', 4, '2023-09-15 12:32:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(340, 37564668, 4, 5, 1, 5.0000, 5, 21065.0000, 'Success', 4, '2023-09-19 03:40:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(341, 37564669, 4, 4, 2, 30.0000, 5, 21095.0000, 'Success', 4, '2023-09-22 18:48:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(342, 37564670, 4, 1, 2, 3486.0000, 5, 24581.0000, 'Success', 4, '2023-09-26 09:56:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(343, 37564671, 4, 5, 1, 5.0000, 5, 24576.0000, 'Success', 4, '2023-10-01 00:00:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(344, 37564672, 4, 2, 1, 55.0000, 5, 24521.0000, 'Success', 4, '2023-10-04 15:08:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(345, 37564673, 4, 3, 2, 3315.0000, 5, 27836.0000, 'Success', 4, '2023-10-08 06:16:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(346, 37564674, 4, 3, 2, 5508.0000, 5, 33344.0000, 'Success', 4, '2023-10-11 21:24:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(347, 37564675, 4, 3, 2, 2253.0000, 5, 35597.0000, 'Success', 4, '2023-10-15 12:32:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(348, 37564676, 4, 3, 1, 60.0000, 5, 35537.0000, 'Success', 4, '2023-10-19 03:40:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(349, 37564677, 4, 3, 1, 89.0000, 5, 35448.0000, 'Success', 4, '2023-10-22 18:48:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(350, 37564678, 4, 1, 2, 9787.0000, 5, 45235.0000, 'Success', 4, '2023-10-26 09:56:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(351, 37564679, 4, 1, 2, 4464.0000, 5, 49699.0000, 'Success', 4, '2023-10-30 01:04:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(352, 37564680, 4, 4, 2, 30.0000, 5, 49729.0000, 'Success', 4, '2023-11-01 00:00:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(353, 37564681, 4, 3, 2, 3010.0000, 5, 52739.0000, 'Success', 4, '2023-11-04 15:08:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(354, 37564657, 5, 1, 2, 1832.0000, NULL, 2832.0000, 'Success', 5, '2023-08-11 21:24:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(355, 37564658, 5, 5, 1, 5.0000, NULL, 2827.0000, 'Success', 5, '2023-08-15 12:32:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(356, 37564659, 5, 4, 2, 30.0000, NULL, 2857.0000, 'Success', 5, '2023-08-19 03:40:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(357, 37564660, 5, 1, 2, 7144.0000, NULL, 10001.0000, 'Success', 5, '2023-08-22 18:48:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(358, 37564661, 5, 5, 1, 5.0000, NULL, 9996.0000, 'Success', 5, '2023-08-26 09:56:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(359, 37564662, 5, 2, 1, 52.0000, NULL, 9944.0000, 'Success', 5, '2023-08-30 01:04:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(360, 37564663, 5, 3, 1, 78.0000, NULL, 9866.0000, 'Success', 5, '2023-09-01 00:00:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(361, 37564664, 5, 1, 2, 8435.0000, NULL, 18301.0000, 'Success', 5, '2023-09-04 15:08:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(362, 37564665, 5, 4, 2, 30.0000, NULL, 18331.0000, 'Success', 5, '2023-09-08 06:16:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(363, 37564666, 5, 5, 1, 5.0000, NULL, 18326.0000, 'Success', 5, '2023-09-11 21:24:00.000', 'Debit Fee Charge', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(364, 37564667, 5, 3, 1, 22.0000, NULL, 18304.0000, 'Success', 5, '2023-09-15 12:32:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(365, 37564668, 5, 3, 1, 36.0000, NULL, 18268.0000, 'Success', 5, '2023-09-19 03:40:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(366, 37564669, 5, 3, 2, 8141.0000, NULL, 26409.0000, 'Success', 5, '2023-09-22 18:48:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(367, 37564670, 5, 3, 2, 3286.0000, NULL, 29695.0000, 'Success', 5, '2023-09-26 09:56:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(368, 37564671, 5, 2, 1, 34.0000, NULL, 29661.0000, 'Success', 5, '2023-10-01 00:00:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(369, 37564672, 5, 4, 2, 30.0000, NULL, 29691.0000, 'Success', 5, '2023-10-04 15:08:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(370, 37564673, 5, 3, 2, 6767.0000, NULL, 36458.0000, 'Success', 5, '2023-10-08 06:16:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(371, 37564674, 5, 3, 2, 4262.0000, NULL, 40720.0000, 'Success', 5, '2023-10-11 21:24:00.000', 'Credit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(372, 37564675, 5, 1, 2, 1335.0000, NULL, 42055.0000, 'Success', 5, '2023-10-15 12:32:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(373, 37564676, 5, 3, 1, 62.0000, NULL, 41993.0000, 'Success', 5, '2023-10-19 03:40:00.000', 'Debit Transfer', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(374, 37564677, 5, 4, 2, 30.0000, NULL, 42023.0000, 'Success', 5, '2023-10-22 18:48:00.000', 'Credit Interest Earned', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(375, 37564678, 5, 2, 1, 53.0000, NULL, 41970.0000, 'Success', 5, '2023-10-26 09:56:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(376, 37564679, 5, 2, 1, 84.0000, NULL, 41886.0000, 'Success', 5, '2023-10-30 01:04:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(377, 37564680, 5, 1, 2, 4952.0000, NULL, 46838.0000, 'Success', 5, '2023-11-01 00:00:00.000', 'Credit Deposit', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);
INSERT INTO dbo.transactions
(transaction_id, transaction_no, bank_account_id, transaction_category_id, transaction_type_id, transaction_amount, participant_account_id, balance, status, user_id, transaction_date, description, inserted_by, inserted_date, updated_by, updated_date)
VALUES(378, 37564681, 5, 2, 1, 90.0000, NULL, 46748.0000, 'Success', 5, '2023-11-04 15:08:00.000', 'Debit Withdrawal', 'dbo', '2023-11-09 13:35:31.295', NULL, NULL);

select setval('dbo.transactions_seq', (SELECT max(transaction_id) FROM dbo.transactions), true);
