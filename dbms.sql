create database FootShopExamWebAPI

create table User_Details(
User_ID int identity(1,1) primary key,
User_Name varchar(50) not null,
User_Email varchar(100) not null unique,
User_Password varchar(100) not null,
User_Type varchar(50) not null)

--drop table User_Details

insert into User_Details values('Suraj','suraj@gmail.com','Suraj@123','admin');
insert into User_Details values('Nawaz','nawaz@gmail.com','Nawaz@123','admin');
insert into User_Details values('Admin','admin@footshop.com','@dmin','admin');
insert into User_Details values('Irfan','irfan@gmail.com','Irfan@123','user');

--drop table User_Details
--select * from User_Details

create table Product_Details(
Prod_ID int identity(1000,1) primary key,
Prod_Name varchar(100) not null,
Prod_Price int check(Prod_Price>0) not null,
Prod_Qty int not null,
Prod_Tag varchar(200) not null)

insert into Product_Details values('Puma Aero Dyn',1599,50,'images/product-1.jpg');
insert into Product_Details values('Adidas NEO',1999,100,'images/product-2.jpg');
insert into Product_Details values('Nike Jordan',2399,150,'images/product-3.jpg');
insert into Product_Details values('Nike Sports',2599,250,'images/product-4.jpg');
insert into Product_Details values('Puma Running Shoes',3999,350,'images/product-5.jpg');
insert into Product_Details values('Wakanda Forever',4999,50,'images/product-6.jpg');

delete From Product_Details where Prod_Id>=1000

--drop table Product_Details
--select * from Product_Details

create table Cart_Details(
Cart_ID int identity(1111,1) primary key,
Prod_ID int references Product_Details(Prod_ID),
Prod_Name varchar(50) not null,
Req_Qty int not null,
Prod_Price int not null check(Prod_Price>0),
Prod_Tag varchar(300) not null)

alter table cart_Details
add User_ID int references User_Details(User_ID)

delete from Cart_Details where Cart_ID>1116

insert into Cart_Details values(1000,'Puma Aero Dyn',2,1599,'images/product-1.jpg');
insert into Cart_Details values(1002,'Nike Jordan',1,2399,'images/product-3.jpg');

--drop table Cart_Details
--select * from Cart_Details

create table Order_Details(
Order_ID int identity(11111,1) primary key,
Order_Tag varchar(300) not null,
User_ID int references User_Details(User_ID),
Prod_ID int references Product_Details(Prod_ID),
Prod_Name varchar(50) not null,
Order_Qty int not null,
Prod_Price int not null check(Prod_Price>0),
Prod_Total int not null)

insert into Order_Details values('images/product-1.jpg',1,1000,'Puma Aero Dyn',2,1599,2988)

--drop table Order_Details
--select * from Order_Details
delete from order_Details where Order_Id>11110
delete from cart_Details where cart_Id>=1000
