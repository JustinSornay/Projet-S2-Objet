CREATE SCHEMA IF NOT EXISTS `directory` DEFAULT CHARACTER SET utf8 ;
USE `directory` ;

drop table if exists `directory`.`person`;
create table if not exists `directory`.`person`
(
	`ID` int primary key AUTO_INCREMENT, 
	`LASTNAME` varchar(30) not null,
	`FIRSTNAME` varchar(50) default null,
	`PHONE` varchar(20) default null,
	`EMAIL` varchar(128) default null,
	`ADDRESS` varchar(128) default null,
	`GENDER` char(1) not null default 'N'
)ENGINE = InnoDB;

set sql_safe_updates=0;

delete from person;
insert into person(LASTNAME,FIRSTNAME,PHONE,EMAIL,GENDER)
values('VADOR','Dark','666-666-666','vador@deathstar.org','M'),
('ORGANA','Leia','','organa@senate.gouv','F'),
('SKYWALKER','Luke','','luke@jedi.net','M'),
('R2D2','','','','N');
