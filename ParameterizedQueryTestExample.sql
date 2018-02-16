--declare @id int;
--set @id = 1;
--select * from customer
--where id >= 1 and id <= 3

--declare @lowerid int;
--declare @upperid int;
--set @lowerid = 1;
--set @upperid = 3;
--select * from customer
--where id >= @lowerid and id <= @upperid;

----CREATE CUSTOMER PARAMETERIZED QUERY TO SEARCH CUSTOMERS BY AN INPUT STATE
--declare @state nvarchar(2);
--set @state = 'IN';
--select * from customer where state = @state;


--declare @lowerid int;
--declare @upperid int;
--set @lowerid = 300000;
--set @upperid = 1000000;
--select * from customer where creditLimit >= @lowerid and id <= @upperid;

--declare @partialStr varchar(30);
--set @partialStr = 'LPA';
--select * from customer where name like '%' + @partialStr + '%' order by name;

declare @Id int, @Name varchar(30), @City varchar(30), @State varchar(2)
declare @IsCorpAcct bit, @CreditLimit int, @Active bit
set @Id = 15;
set @Name = 'SuperMAX';
set @City = 'Mason';
set @State = 'OH';
set @IsCorpAcct = 1;
set @CreditLimit = 1;
set @Active = 1;

update customer set
Name = @Name, 
city = @City, 
state = @State, 
IsCorpAcct = @IsCorpAcct, 
CreditLimit = @CreditLimit, 
Active = @Active
where id = @Id

select * from customer


--insert into customer (name, city, state, IsCorpAcct, CreditLimit, Active)
--	values(@name, @city, @state, @IsCorpAcct, @CreditLimit, @Active);

--select * from customer where Name like '%MAX%';

--delete from customer where id = 14;


