create table customer(
CID int primary key,
name varchar(80),
NatCod varchar(10),
Birthdate date,
Add_ varchar(200),
Tel varchar(20),
)

create table Branch(
Branch_ID int primary key,
Branch_Name varchar(30),
Branch_Add varchar(100),
Branch_Tel varchar(20),
)


create table Trn_Src_Dec(
VoucherId varchar(10) PRIMARY KEY,
TrnDate date,
TrnTime varchar(20),
Amount bigint,
SourceDep int,
DesDep int,
Branch_id int,
Trn_Desc varchar(500),
FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_ID),
)

create table Deposit(
Dep_ID int PRIMARY KEY,
Dep_Type int,
CID int,
OpenDate date,
status_ int,
FOREIGN KEY (CID) REFERENCES Customer(CID),
)

create table Deposit_Type(
Dep_Type int ,
Dep_Type_Desc varchar(50),

)

create table Deposit_Status(
status int ,
status_Desc varchar(50),
)

drop table Trn_Src_Dec
drop table Branch
drop table Deposit_Status
drop table Deposit_Type
drop table Deposit
drop table customer

