alter procedure GPARange
	@gpain decimal(4,1) = 0.0
AS
BEGIN
	declare @gpaupper decimal(4,1);
	set @gpaupper = @gpain + 0.3;
	declare @gpalower decimal(4,1);
	set @gpalower = @gpain - 0.4;	
	select * from student where (gpa >= @gpalower) and (gpa <= @gpaupper)
	         order by gpa asc;
END
go
exec GPARange @gpain=4.0;