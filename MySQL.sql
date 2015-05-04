create database Users;
use Users;

CREATE TABLE User_Info (
UserID int unique NOT NULL AUTO_INCREMENT,
UserName varchar(255) unique NOT NULL,
password varchar(255) NOT NULL,
email varchar(255) unique NOT NULL,
phone varchar(11) unique NOT NULL,
fname varchar(255) NOT NULL,
mname varchar(255),
lname varchar(255) NOT NULL,
	CONSTRAINT PK_UserInfo PRIMARY KEY (UserID)
);

select * from User_Info

insert User_Info(UserName, password, email, phone, fname, mname, lname)
values ('michael888', 'aaaaaa', 'michael_lawrence_dee@yahoo.com', '09326551952', 'Michael', 'C.', 'Dee');

drop table User_Info