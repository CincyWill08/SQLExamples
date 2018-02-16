--create database sproc;

--create procedure IntDoubler
alter procedure IntDoubler
	@nbr int=0
AS
BEGIN
	PRINT CAST(@nbr as varchar) + ' * 2 = ' + CAST(@nbr*2 as varchar)
END
go
EXEC IntDoubler @nbr=3;
