# Qioaran Li 
# This file contains the select queries 
# 7/3/2018

use bigdatabyte; 

############ VIEWS #################################

# 1. agent queries access sale records 
create view saleHistory as 
select sale_id, location as 'office', 
	date_signed, property_name, 
	client_Fname, client_Lname, 
	client_type, 
	agent_Fname, agent_Lname,
	sale_price, 
	commission_percent, 
	commission_percent * sale_price 
		as commission_amount
		from sales
			join commissions using (sale_id)
			join clients using (client_id)
            join agent using (agent_id)
            join property using (property_id) 
            join office 
				on (sale_location =office.office_id);
				             
select * from saleHistory where office = 'Cole LLC';  # by office location
select * from saleHistory where sale_price > 900000;  # by sale price
select * from saleHistory where agent_Fname = 'Tommie';  # by sale price

# 2. agent/client view available properties 
create view availableProperty as
select property_id, location as 'office', 
	asking_price, no_bedrooms,
	sq_footage, has_balcony, pets_allowed, 
	parking_spaces, garage_spaces, no_baths, 
	property_name, property_description,
	client_Fname as 'owner_Fname', 
	client_Lname as 'owner_Lname', 
	property_address, city_name, 
	max(date_put_on_market) as 'last_posting_date', 
	max(date_put_on_market) > max(date_signed) 
	as on_the_market
    from for_sale 
		join sales using (property_id) 
        join property using (property_id)
        join office on (sales.sale_location = office.office_id)
        join clients on (property_owner_id = clients.client_id)
        join city using (city_id)
			group by property_id 
				having on_the_market = 1;

select * from availableProperty where last_posting_date > '2018-05-01'; 
select * from availableProperty where asking_price < 100000; 
select * from availableProperty where owner_Fname = 'Tiffi'; 

; 
# 3. agent/client view sold properties 
create view soldProperty as
select property_id, location as 'office', 
	sale_price, no_bedrooms, 
	sq_footage, has_balcony, pets_allowed, 
	parking_spaces, garage_spaces, no_baths, 
	property_name, property_description, 
	client_Fname as 'owner_Fname', 
	client_Lname as 'owner Lname', 
    agent_Fname as 'agent_Fname',
    agent_Lname as 'agent_Lname',
	property_address, city_name, date_signed, 
	max(date_put_on_market) < max(date_signed) 
	as on_the_market
    from for_sale
		join sales using (property_id) 
        join commissions using (sale_id)
	    join agent using (agent_id)  
        join property using (property_id)
        join office on (sales.sale_location = office.office_id)
        join clients on (property_owner_id = clients.client_id)
        join city using (city_id)
			group by property_id 
				having on_the_market = 1;

select * from soldProperty where date_signed < '2018-05-01'; 
select * from soldProperty where sale_price < 500000; 
select * from soldProperty where has_balcony = 1; 
select * from soldProperty where propery_name like 'Otcom'; 
                

# 4. agent see a report of customers
create view clientList as 
select client_id, 
	location as 'office', 
	client_primary_address, 
	client_type, 
	client_Fname, client_Lname, 
	client_phone_number,
    client_email
	from clients
		join commissions using (client_id)
		join sales using (sale_id)
		join office on (sale_location = office.office_id); 

select * from clientList where office = 'Cremin Group'; # by office location
select * from clientList where client_Fname = 'Rad'; # by client name

# 5. payroll/client/seller accessing report of agents 
create view agentList as 
select agent_id, location as 'office', 
	agent_Fname, agent_Lname,
	agent_salary, home_address 
		from agent join office 
			on (primary_office = office_id); 
		
		
select * from agentList where office = 'Cole LLC'; # by office location 
select * from agentList where agent_Fname = 'Tommie'; # by agent bio
        
		
		
######## SAMPLE MOD #########################   
# client modify his information
update client set Fname = 'Qiaoran'; 
update client set phone_number = '585-000-0000'; 

# seller modify his information
update seller set Fname = 'James'; 
update seller set phone_number = '585-111-1111'; 
 
# payroll change commission amount - NOT CORRECT
update commissions 
    join agent on (commissions.agent_id = agent.agent_id)
		set commission_percent = 0.28 
		where agent.agent_id = 101; 

		
		
############### manage users ######################
create role clients; 
grant select on availableProperty to clients; 
grant clients to Robert; 