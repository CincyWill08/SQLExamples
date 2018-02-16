--create database sproc;

--create procedure HelloWorldSproc
alter procedure HelloWorldSproc
	@name varchar(15)='everyone',
	@nbr int=0
AS
BEGIN
--	SELECT concat('Hello, world to ', @name, '!');
	PRINT concat('Hello, world to ', @name, ', whose favorite number is ', 
	        + CAST(@nbr as varchar), '!');
END
go
EXEC HelloWorldSproc @name='Michael', @nbr=3;
