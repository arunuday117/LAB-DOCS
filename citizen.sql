create database Details;
use Details;
create table citizen(
Name varchar(50),
Age int(50),
Adhar int(50) primary key
);
create table Voters(
Name varchar(50),
Adhar int(50),
foreign key(Adhar) references citizen(Adhar)

);
insert into citizen values("Afeef",24,8998);
insert into citizen values("Arun",13,9870);
insert into citizen values("Rajettan",54,7870);
insert into citizen values("Kannappi",18,7871);
insert into citizen values("Kochunni",49,7975);
select * from voters;
select * from citizen;

//trigger
CREATE DEFINER=`root`@`localhost` TRIGGER `details`.`citizen_AFTER_INSERT` AFTER INSERT ON `citizen` FOR EACH ROW
BEGIN
if(new.age>=18)
then
insert into Voters set Name=new.Name,Adhar=new.Adhar;
end if;
END
