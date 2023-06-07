create database MY_APP ;
use MY_APP ;
create table Users (
user_id int auto_increment primary key,
user_firstname varchar(40) not null,
user_lastname varchar (40) not null,
user_email varchar (60) not null,
user_password varbinary (256)
); 


  INSERT INTO Users (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('juan'), UPPER('quiñones'), 'juan0622B@gmail.com',AES_ENCRYPT('password','$2a$12$MQqnGyaDTjo2o2sAQaIDReRd6ub3ZxYYakF0heiMOtaZBIW.lUhM.'));

SELECT *,
 CAST(AES_DECRYPT(user_password,
'$2a$12$MQqnGyaDTjo2o2sAQaIDReRd6ub3ZxYYakF0heiMOtaZBIW.lUhM.') AS CHAR(50))
end_data FROM Users WHERE user_id = 3;


 INSERT INTO Users (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('julian'), UPPER('niño'), 'julsnio@correo.com',AES_ENCRYPT('password','$2a$12$71SJ2B6qdXDQrZUF4KR5suDytQ062kLQf/QHbatSw8wLqu1DoMppm'));
SELECT *,
 CAST(AES_DECRYPT(user_password,
'$2a$12$71SJ2B6qdXDQrZUF4KR5suDytQ062kLQf/QHbatSw8wLqu1DoMppm') AS CHAR(50))
end_data FROM Users WHERE user_id = 1;
 
select*from Products ;

create table Categories (
id_category int auto_increment primary key,
category_name varchar (50)
);

create table Products (
id_product int auto_increment primary key,
product_name varchar (50),
product_value int
);
ALTER TABLE Products ADD COLUMN id_category int, ADD FOREIGN KEY (id_category)REFERENCES Categories (id_category);
select * from Products;
insert into Products (product_name,product_value,id_category) values ("hola",1212,1);