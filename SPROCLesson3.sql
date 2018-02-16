--create procedure Adder
alter procedure Adder
	@nbr1 int=0,
	@nbr2 int=0
AS
BEGIN
	PRINT CONCAT(@nbr1, ' + ', @nbr2, ' = ', @nbr1+@nbr2);
END
go
EXEC Adder @nbr1=170, @nbr2=1000;