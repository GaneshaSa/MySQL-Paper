use ganesha;
create table tempp (string1 varchar(10),string2 varchar(10) ,msg varchar(10));
delimiter //
create procedure proc1(string1 varchar(10),string2 varchar(10))
begin
declare msg varchar(10);
declare num int;
select locate(string1,string2) into num;
if num>0 then insert into tempp values (string1,string2,'String1 exists in String2');
else insert into tempp values (string1,string2,'String1 does not exists in String2') ;
end if;
select * from tempp;
end;
//
delimiter ;
select * from tempp;
