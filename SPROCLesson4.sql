alter procedure Addition
	@nbr int = 0
AS
BEGIN	
	DECLARE @result int;
	set @result = @nbr;
	print concat('The number is ', @result);
	set @result = @result + 1;
	print concat('The number + 1 is ', @result);
	set @result = @result + 2;
	print concat('The previous result + 2 is ', @result);
	set @result = @result + 3;
	print concat('The previous result + 3 is ', @result);
END
go
exec Addition @nbr=10;