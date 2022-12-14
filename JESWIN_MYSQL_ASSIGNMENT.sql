create database IF NOT EXISTS glassignment ;
create table category(
CAT_ID int primary key auto_increment,
CAT_Name varchar(20) not null);

create table product(
PRO_ID int primary key auto_increment,
PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy" ,
PRO_DESC VARCHAR(60),
CAT_ID	INT ,
foreign key(CAT_ID) references category(CAT_ID));

create table supplier(
SUPP_ID	 int primary key auto_increment,
SUPP_NAME	varchar(50) not null,
SUPP_CITY varchar(60) not null ,
SUPP_PHONE varchar(10) not null);

create table supplier_pricing(
PRICING_ID int primary key auto_increment,
PRO_ID int,
SUPP_ID int,
SUPP_PRICE int default 0,
foreign key(PRO_ID) references product(PRO_ID),
foreign key(SUPP_ID) references supplier(SUPP_ID));

create table customer(
CUS_ID int primary key  ,
CUS_NAME varchar(20) not null,
CUS_PHONE varchar(10) not null,
CUS_CITY varchar(30) not null,
CUS_GENDER char);

create table orders(
ORD_ID int primary key auto_increment,
ORD_AMOUNT int not null,
ORD_DATE date not null,
CUS_ID int,
PRICING_ID int,
foreign key(CUS_ID) references customer(CUS_ID),
foreign key(PRICING_ID ) references supplier_pricing(PRICING_ID ));

create table rating(
RAT_ID int primary key auto_increment,
ORD_ID int,
RAT_RATSTAR int ,
foreign key(ORD_ID) references orders (ORD_ID));

insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE)values("Rajesh Retails","Delhi",1234567890);
insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE)values("Appario Ltd","Mumbai",2589631470);
insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE)values("Knome products","Banglore",9785462315);
insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE)values("Bansal Retails","Kochi",8975463285);
insert into supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE)values("Mittal Ltd" ,"Lucknow",7898456532);

insert into customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)values(1,"AAKASH",9999999999,"DELHI",'M');
insert into customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)values(2,"AMAN",9785463215,"NOIDA",'M');
insert into customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)values(3,"NEHA",9999999999,"MUMBAI",'F');
insert into customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)values(4,"MEGHA",9994562399,"KOLKATA",'F');
insert into customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)values(5,"PULKIT",7895999999,"LUCKNOW",'M');

insert into category(CAT_Name)values("BOOKS");
insert into category(CAT_Name)values("GAMES");
insert into category(CAT_Name)values("GROCERIES");
insert into category(CAT_Name)values("ELECTRONICS");
insert into category(CAT_Name)values("CLOTHES");

insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("TSHIRT","SIZE-L with Black , Blue and White variations",5);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("OATS","Highly Nutritious from Nestle",3);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("HARRY POTTER","Best Collection of all time by J.K Rowling",1);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("MILK"," 1L Toned MIlk",3);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("Boat Earphones","1.5 Meter long Dolby Atmos",4);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("Jeans","Stretchable Denim Jeans with various sizes and color",5);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("Project IGI","compatible with windows 7 and above",2);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("Hoodie","Black GUCCI for 13 yrs and above",5);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
insert into product(PRO_NAME,PRO_DESC,CAT_ID)values("Train Your Brain",	"By Shireen Stephen",1);

insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)values(1,2,1500);
insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)values(3,5,30000);
insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)values(5,1,3000);
insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)values(2,3,2500);
insert into supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)values(4,1,1000);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)VALUES(12,2,780);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)VALUES(12,4,789);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(3,1,31000);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(1,5,1450);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(4,2,999);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(7,3,549);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(7,4,529);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)VALUES(6,2,105);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)VALUES(6,1,99);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(2,5,2999);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(5,2,2999);


insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(101,1500,'2021-10-06',2,1);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(102,1000,'2021-10-12',3,5);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(103,30000,'2021-09-16',5,2);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(104,1500,'2021-10-05',1,1);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(105,3000,'2021-08-16',4,3);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(106,1450,'2021-08-18',1,9);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(107,789,'2021-09-01',3,7);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(108,780,'2021-09-07',5,6);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(109,3000,'2021-00-10',5,3);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(110,2500,'2021-09-10',2,4);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(111,1000,'2021-09-15',4,5);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(112,789,'2021-09-16',4,7);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(113,31000,'2021-09-16',1,8);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(114,1000	,'2021-09-16',3,5);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(115,3000,'2021-09-16',5,3);
insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)values(116,99,'2021-09-17',2,14);

alter table rating rename column RAT_RATSTAR to RAT_RAT_RATSTARS;
alter table rating rename column RAT_RAT_RATSTARS to RAT_RATSTARS;

insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(1,101,4);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(2,102,3);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(3,103,1);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(4,104,2);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(5,105,4);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(6,106,3);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(7,107,4);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(8,108,4);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(9,109,3);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(10,110,5);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(11,111,3);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(12,112,4);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(13,113,2);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(14,114,1);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(15,115,1);
insert into rating(RAT_ID,ORD_ID,RAT_RATSTARS)values(16,116,0);










select count(t2.CUS_GENDER) as Totalcustomers, t2.CUS_GENDER as GENDER from 
(select t1.CUS_ID, t1.CUS_GENDER, t1.ORD_AMOUNT, t1.CUS_NAME from 
(select orders.*, customer.CUS_GENDER, customer.CUS_NAME from orders inner join customer where orders.CUS_ID=customer.CUS_ID having ORD_AMOUNT>=3000)
as t1  group by t1.CUS_ID) as t2 group by t2.CUS_GENDER;



select product.PRO_NAME, orders.* from orders, supplier_pricing, product
where orders.CUS_ID=2 and
orders.PRICING_ID=supplier_pricing.PRICING_ID and supplier_pricing.PRO_ID=product.PRO_ID;


select supplier.* from supplier where supplier.SUPP_ID in
(select SUPP_ID from supplier_pricing group by SUPP_ID having
count(SUPP_ID)>1)
group by supplier.SUPP_ID;


select category.cat_id,category.CAT_Name, min(t3.min_price) as MIN_Price from category inner join
(select product.cat_id, product.pro_name, t2.* from product inner join  
(select pro_id, min(supp_price) as MIN_Price from supplier_pricing group by PRO_ID) 
as t2 where t2.pro_id = product.PRO_ID)
as t3 where t3.cat_id = category.CAT_ID group by t3.CAT_ID;


select product.pro_id,product.PRO_NAME from orders inner join supplier_pricing on supplier_pricing.PRICING_ID= orders.PRICING_ID inner join product
on product.PRO_ID=supplier_pricing.PRO_ID where orders.ORD_DATE>"2021-10-05";


select customer.CUS_NAME,customer.CUS_GENDER from customer where customer.CUS_NAME like 'A%' or customer.cus_name like '%A';


DELIMITER &&  
CREATE PROCEDURE Report()
BEGIN
select report.SUPP_ID,report.SUPP_NAME,report.Average,
CASE
	WHEN report.Average =5 THEN 'Excellent Service'
    	WHEN report.Average >4 THEN 'Good Service'
    	WHEN report.Average >2 THEN 'Average Service'
    	ELSE 'Poor Service'
END AS Type_of_Service from 
(select final.supp_id, supplier.SUPP_NAME, final.Average from
(select test2.supp_id, sum(test2.rat_ratstars)/count(test2.rat_ratstars) as Average from
(select supplier_pricing.SUPP_ID, test.ORD_ID, test.RAT_RATSTARS from supplier_pricing inner join
(select orders.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS from orders inner join rating on rating.ord_id = orders.ord_id ) as test
on test.PRICING_ID = supplier_pricing.PRICING_ID) 
as test2 group by supplier_pricing.SUPP_ID) 
as final inner join supplier where final.SUPP_ID = supplier.SUPP_ID) as report;
END &&  
DELIMITER ;  

call REPORT();




