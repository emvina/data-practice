-- project idea
-- TITLE: Gladly Fitness Club
create database GladlyFitnessClub;

use GladlyFitnessClub;

-- customer/member's data 
	-- first name varchar not null
    -- last name varchar not null
    -- membership id int not null (primary key)
    -- phone number int
    -- email address
    -- address
	-- branch code (primary key & foreign key)
	-- membership type chosen
    -- join date
    
  CREATE TABLE members (
    first_name VARCHAR(55) NOT NULL,
	last_name VARCHAR(55) NOT NULL,
    members_id INT NOT NULL AUTO_INCREMENT,
    phone_number INT,
    email_address VARCHAR(100),
    address VARCHAR(100) NOT NULL,
    branch_code VARCHAR(3), -- foreign key
	membership_type VARCHAR(55) NOT NULL, -- foreign key
    join_date date, -- YY-MM-DD
    CONSTRAINT PK_MembersID PRIMARY KEY (members_id) -- primary key
);  

Alter table members auto_increment=100;

INSERT INTO members
(first_name, last_name, phone_number, email_address, address, branch_code, membership_type, join_date) 
VALUES 
('Danilo', 'Ray', 0836183275, 'daniloray@gmail.com','97, Templeogue Wood, Dublin, D12P5YP','D00','Annually', '2022-01-19'),
('Nik', 'Edwards', 0835179432, 'nikedwards@gmail.com','307, Hawthorns Road, Dublin, A94EY65','A00','Monthly', '2021-06-20'),
('Glad', 'Phillips', 0832647519, 'gladisephillips@gmail.com','92, Silchester Park, Dublin, A96FE09','A00','Daily', '2024-06-23'),
('Bim', 'Holland', 0836943521, 'bimholland@gmail.com','88, St Helens Road, Dublin, A94A2A4','A00','Weekly', '2023-08-16'),
('Efren', 'Burke', 0836841572, 'efrenburke@gmail.com','131, CarrigWood, Dublin, D24FW9Y','D00','Annually', '2020-01-01'),
('Justine', 'Walker', 0836439857, 'justinewalker@gmail.com',' 26, Clanmawr, Dublin, D18E285','D00','Monthly', '2023-11-17'),
('John', 'Chandler', 0838256497,'johnchandler@gmail.com','21, Fox Lane, Dublin, D05H2K2','D00','Monthly','2021-12-24'),
('Marie', 'Campbell', 0837165382, 'mariecampbell@gmail.com','2, The Orchard, Dublin, A94PC95','A00','Weekly', '2023-02-14'),
('Darren', 'Dunn', 0833894175, 'darrendunn@gmail.com','24, Castlewood Avenue, Dublin,  D06K2F3','D00','Monthly', '2022-07-15'),
('Emma', 'Carr', 0838324569, 'emmacarr@gmail.com','122, Nephin Road, Dublin, D07Y891','D00','Monthly', '2023-04-03'),
('Sharon', 'Cooper', 0832391647, 'sharoncooper@gmail.com','80, Saint Fintans Park, Dublin, A94A4A7','A00','Annually', '2020-09-19'),
('Joe', 'Terry', 0833691427, 'joeterry@gmail.com','13, Croydon Green, Dublin, D03Y0C6','D00','Daily', '2024-01-07'),
('Karen', 'Obrien',  0832381657, 'karenobrien@gmail.com','21, Alden Road, Dublin, D05H2K2','D00','Monthly', '2022-05-21'),
('June', 'Jensen',  0838541936, 'junejensen@gmail.com','50, Woodlands Park, Dublin, A94AN81','A00','Monthly', '2024-01-13'),
('Susan', 'Parks',  0837986541, 'susanparks@gmail.com','8, Hollyville Lawn, Dublin, D20DT92','D00','Monthly', '2021-08-17'),
('Matthew', 'Heath', 0834156389, 'matthewheath@gmail.com','391, Pearse Street, Dublin, A96KV84','A00','Annually', '2023-03-28'),
('Alvin', 'Cobb',  0832167958, 'alvincobb@gmail.com','12a, Carrickbrack Road, Dublin, D13F3C1','D00','Annually', '2023-07-05'),
('Julius', 'Adams',  0833654182, 'juliusadams@gmail.com','27, OConnell Street Lower, Dublin, D01P5P5','D00','Monthly', '2020-02-12'),
('Laiza', 'Scott',  0837392465, 'laizascott@gmail.com','116, Esker Park, Dublin, D78E3F9','D00','Monthly', '2023-05-05'), 
('Leonard', 'Kennedy',  0836842915, 'leonardkennedy@gmail.com','8, Innismore, Dublin, D12VN1F','D00','Monthly', '2020-07-15'),
('Patricia', 'Holt', 0834851796, 'patriciaholt@gmail.com','6, Springfield, Dublin, D07VRX2','D00','Monthly', '2022-09-04'),
('Lydia', 'Ramsey', 0831429635, 'lydiaramsey@gmail.com','25, Old Navan Road, Dublin, D15NX98','D00','Monthly', '2021-10-12'),
('Albert', 'Reilly', 0839526137, 'albertreilly@gmail.com','4, Sigurd Road, Dublin, D07V403','D00','Annually', '2024-03-08'),
('Alex', 'Hopkins',  0837153248, 'alexhopkins@gmail.com','36, Newbrook Avenue, Dublin, D05H2K2','D00','Monthly', '2020-06-19'),
('Owen', 'McCoy',0834723591, 'owenmccoy@gmail.com','37, Fairy Hill, Dublin, A94DA33','A00','Monthly', '2023-11-11');

select*from members; -- checking tables

-- staff's data
	-- first name varchar not null
	-- last name varchar not null
    -- staff level (manager, senior, associate, junior, intern)
	-- staff id int not null pk
    
  CREATE TABLE staffs (
    first_name VARCHAR(55) NOT NULL,
	last_name VARCHAR(55) NOT NULL,
    staff_level VARCHAR (55) NOT NULL,
    branch_code VARCHAR(3) NOT NULL, -- foreign key
    staff_id INT NOT NULL AUTO_INCREMENT, -- primary key
    CONSTRAINT PK_StaffID PRIMARY KEY (staff_id)
);  

alter table staffs auto_increment=10;

INSERT INTO staffs
(first_name, last_name, staff_level, branch_code) 
VALUES 
('James', 'Bernard','Manager','D00'),
('Chloe', 'Griffith','Manager','A00'),
('Jack', 'Martin','Associate Staff','D00'),
('Daniel', 'Duncan','Senior Staff','A00'),
('Sasha', 'Hartley','Senior Staff','D00'),
('Misty', 'Oliver','Junior Staff','D00'),
('Clark', 'Kent','Associate Staff','D00'),
('Mary', 'Woods','Senior Staff','A00'),
('Peter', 'Parker','Associate Staff','D00'),
('Patrick', 'Stuart','Associate Staff','A00'),
('Gayle', 'Caldwell','Senior Staff','A00'),
('Richard', 'Hubbard','Junior Staff','A00'),
('Rei', 'Morgan','Senior Staff','D00'),
('Mason', 'Carpenter','Senior Staff','D00');

select*from staffs; -- checking tables

	-- location/branch
		-- address
        -- city
		-- contact number/phone number
        -- branch id/postcode
        
  CREATE TABLE branch (
    address VARCHAR(55) NOT NULL,
    contact_number INT,
    branch_code VARCHAR(3) NOT NULL, -- primary key
    CONSTRAINT PK_BranchCode PRIMARY KEY (branch_code)
);  

INSERT INTO branch
(address, contact_number, branch_code) 
VALUES 
('Gladly Fitness Club, Killiney Heath, Dublin, A96X997', 011265894,'A00'),
('Gladly Fitness Club, Stannaway Avenue, Dublin, D12WK5A', 013458796,'D00');

select*from branch; -- checking table

	-- membership types
		-- types (daily, weekly, monthly, annually)
        -- price
        
  CREATE TABLE membership_plan (
    membership_type VARCHAR(55) NOT NULL, -- foreign key
    price INT NOT NULL
);  

INSERT INTO membership_plan
(membership_type, price) 
VALUES 
('Annually', 1050),
('Monthly', 150),
('Weekly', 75),
('Daily', 10);

select*from membership_plan;

	-- participated activity 
		-- type of activity (bouldering, swimming, gym, pilates, basketball, football, dancing)
        -- day of activity (monday to sunday)// date stamp
        -- hours spent/duration of activity
        
  CREATE TABLE activity (
    activity_name VARCHAR(55) NOT NULL,
    activity_datetime datetime,
    activity_duration time,
	members_id INT NOT NULL, -- foreign key
    staff_id INT NOT NULL-- foreign key
);  
INSERT INTO activity
(activity_name, activity_datetime, activity_duration, members_id, staff_id) 
VALUES 
('Bouldering','2024-03-17 22:59:24', '23:59:59', 111, 10),
('Bouldering','2024-05-09 13:42:49', '15:05:05', 123, 12),
('Bouldering','2024-06-20 05:26:46', '07:10:02', 113, 10),
('Bouldering','2024-01-14 01:21:20', '05:13:59', 119, 11),
('Bouldering','2024-07-10 00:22:55', '03:56:59', 122, 13),
('Bouldering','2024-01-30 18:17:18', '21:34:55', 103, 14),
('Swimming','2024-02-05 10:53:09', '12:30:56', 109, 10),
('Swimming','2024-03-29 10:46:18', '12:20:23', 109, 11),
('Swimming','2024-05-22 07:39:22', '08:10:09', 107, 11),
('Swimming','2024-01-15 12:18:56', '15:45:01', 106, 10),
('Swimming','2024-02-26 06:44:56', '07:30:12', 123, 10),
('Swimming','2024-03-26 21:32:27', '23:00:53', 124, 12),
('Swimming','2024-03-27 14:59:30', '17:31:27', 124, 13),
('Swimming','2024-04-08 02:36:23', '03:45:21', 122, 14),
('Swimming','2024-05-07 02:56:51','04:39:14' , 120, 17),
('Swimming','2024-01-29 23:25:23','01:10:22', 110, 19),
('Swimming','2024-05-14 18:59:38','20:56:18', 120, 11),
('Gym','2024-07-10 09:41:28','12:33:01', 102, 10),
('Gym','2024-05-19 11:15:19','12:35:08', 122, 21),
('Gym','2024-06-27 10:07:54','12:22:12', 113, 11),
('Gym','2024-05-25 08:12:17','11:55:15', 111, 11),
('Gym','2024-01-04 19:28:50','21:44:17', 105, 13),
('Gym','2024-05-08 08:04:11','12:00:00', 105, 18),
('Gym','2024-04-04 04:12:53','07:09:43', 104, 18),
('Gym','2024-05-24 07:14:39','10:28:55', 124, 12),
('Gym','2024-04-03 10:32:35','13:07:35', 110, 10),
('Gym','2024-03-03 05:38:26','06:43:21', 103, 19),
('Gym','2024-05-24 01:52:09','04:20:23', 118, 14),
('Gym','2024-04-16 02:46:10','04:34:33', 115, 21),
('Gym','2024-03-06 11:11:21','13:33:22', 108, 12),
('Gym','2024-04-15 19:17:02','22:22:12', 115, 14),
('Gym','2024-06-12 16:27:37','19:32:54', 104, 16),
('Gym','2024-05-07 03:10:43', '05:45:53', 100, 16),
('Gym','2024-02-28 13:07:19', '15:29:34', 106, 12),
('Gym','2024-07-03 12:24:58', '15:39:33', 100, 10),
('Gym','2024-04-13 01:59:16', '04:33:22', 115, 16),
('Gym','2024-06-06 15:27:27', '17:23:11', 101, 14),
('Gym','2024-02-16 07:15:54', '08:45:24', 116, 15),
('Gym','2024-04-28 12:25:55', '14:01:12', 101, 13),
('Pilates','2024-04-20 20:17:16', '23:05:05', 122, 11),
('Pilates','2024-04-28 21:56:19', '23:45:09', 109, 11),
('Pilates','2024-03-27 09:39:06', '12:28:50', 114, 15),
('Pilates','2024-07-10 15:43:36', '16:30:57', 102, 20),
('Pilates','2024-05-11 14:53:37', '15:45:08', 103, 22),
('Pilates','2024-04-02 14:48:03', '16:23:55', 107, 22),
('Pilates','2024-01-27 21:29:43', '23:55:35', 114, 22),
('Basketball','2024-04-11 14:03:48', '15:37:06', 101, 14),
('Basketball','2024-04-11 15:37:52', '18:35:55', 121, 19),
('Basketball','2024-04-15 21:42:39', '23:50:34', 116, 23),
('Basketball','2024-07-05 08:42:37', '12:28:45', 122, 10),
('Basketball','2024-05-11 00:29:57', '01:40:43', 117, 18),
('Football','2024-02-27 06:10:48', '09:23:54', 121, 12),
('Football','2024-01-21 09:39:50', '12:44:57', 117, 10),
('Football','2024-06-18 04:54:08', '07:33:09', 122, 13),
('Dancing','2024-02-26 10:34:37', '12:39:13', 112, 11),
('Dancing','2024-01-16 06:26:10', '09:08:22', 111, 11),
('Dancing','2024-06-02 07:12:12', '08:40:25', 122, 15),
('Dancing','2024-04-30 03:07:34', '06:54:23', 112, 20),
('Dancing','2024-01-05 17:19:49', '19:22:54', 112, 20),
('Dancing','2024-02-19 19:41:39', '21:45:26', 107, 20),
('Dancing','2024-07-05 08:17:41', '10:20:58', 102, 20),
('Dancing','2024-06-12 00:43:59', '03:44:21', 118, 11);

select*from activity;

-- using view and left joining columns from 3 different tables (membership_plan and branch) to members table
-- in this case i want an overview of all members data, membership type, price and branch code
CREATE VIEW view_membership AS
SELECT members.members_id, members.first_name, members.last_name, members.join_date, members.membership_type, branch.branch_code, membership_plan.price -- columns that I want to join
FROM members
LEFT JOIN membership_plan on members.membership_type = membership_plan.membership_type
--  already setting it up to reference the membership type from both the members and membership_plan table so it will pull the price along with it
LEFT JOIN branch on branch.branch_code = members.branch_code;

select*from view_membership;

 -- using stored function to find the number of years the members has been with GladlyFitnessClub
DELIMITER //
CREATE FUNCTION no_of_years(join_date date) RETURNS int DETERMINISTIC -- no_of_years = function name, join_date = function parameter, deterministic = characteristic
BEGIN -- function body starts here
 DECLARE date2 date; --
  Select current_date()into date2; -- setting the current date in date2
  RETURN year(date2)-year(join_date); -- date2 - join date = no of years of the membership
END 
//
DELIMITER ;
Select members_id, first_name, last_name, no_of_years(join_date) as 'years' from members;

-- another example of using stored function using columns from 2 tables
-- showing who will be eligible for annual discount if they are paying more than 1000 for membership
DELIMITER //
CREATE FUNCTION Annual_Discounts(price int) RETURNS Varchar(15) DETERMINISTIC -- Annual_Discounts = function name, price = function parameter, deterministic = characteristic
BEGIN -- function body starts here
 DECLARE annual_discount Varchar(15); -- declaring who is eligible for discount using if condition
  IF price >1000 then
  set annual_discount = 'ELIGIBLE';
  ELSEIF price <1000 then
  set annual_discount = 'NOT ELIGIBLE';
  END IF;
  RETURN (annual_discount); 
END -- end of function
//
DELIMITER ;

 -- using left join as i am using 2 different tables together this time
SELECT members.members_id, members.first_name, members.last_name, members.membership_type, membership_plan.price, Annual_Discounts(price)-- columns that I want to join
as 'Eligibility for 20% Discount' -- setting the name for this column
FROM members
LEFT JOIN membership_plan on members.membership_type = membership_plan.membership_type;

-- example query with a subquery
-- which activity did patrick/10 managed, and which members attended with order by date ascending
SELECT members.members_id, members.first_name, members.last_name, staffs.staff_id, staffs.first_name, staffs.last_name, activity.activity_name, activity_datetime -- columns that I want to join
FROM activity
LEFT JOIN staffs on activity.staff_id = staffs.staff_id
LEFT JOIN members on activity.members_id = members.members_id
WHERE staffs.staff_id = (select staff_id from staffs where staff_id = 10) -- subquery
ORDER BY activity_datetime ASC
;

-- another example query and subquery
-- finding out which members are on the daily membership plan
SELECT members_id, first_name, last_name, membership_type -- columns that I want to join
FROM members
WHERE membership_type = (select membership_type from membership_plan where membership_type = 'Daily')
;

-- stored procedure called SelectAllMembers to view members in a certain branch i.e. D00
DELIMITER //
CREATE PROCEDURE SelectAllMembers (IN in_branch_code VARCHAR(3))
BEGIN
SELECT members_id, first_name, last_name, branch_code
FROM members
WHERE branch_code = in_branch_code;
END //
DELIMITER ;

CALL SelectAllMembers ('D00');

-- creating a trigger
-- going back to Annual_Discounts where members who paid more than 1000 this year will be receiving 20% off
-- this trigger will be updating the prices for those eligible 

DELIMITER //
CREATE TRIGGER upd_price BEFORE UPDATE ON membership_plan
       FOR EACH ROW 
       BEGIN
           IF NEW.price < 1000 THEN
               SET NEW.price = 1050;
           ELSEIF NEW.price > 1000 THEN
               SET NEW.price = 800;
           END IF;
       END//
DELIMITER;

UPDATE membership_plan
SET price = 800;



show table membership_plan;

drop trigger upd_price;


SET @sum = 0;
SELECT @sum AS 'Total amount inserted';


-- creating an event
DELIMITER //
CREATE EVENT duration
ON SCHEDULE AT activity_datetime (datetime) - activity_duration (time) = duration(time)
DO 
BEGIN
	INSERT INTO activity
    SET VALUES IN duration (time);
END//
DELIMITER;

-- create a group by

-- create DB diagram
select*from membership_plan;


