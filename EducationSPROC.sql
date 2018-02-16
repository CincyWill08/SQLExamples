alter procedure GetAllStudents
	@GpaGreaterThanOrEqualTo decimal(4,1) = 3.0,
	@SatGreaterThanOrEqualTo int = 400,
	@StudentLastName varchar(30) 
AS
BEGIN
	SELECT concat(firstname, ' ', lastname) as 'Student Name', GPA, SAT 
		from Student
		where gpa >= @GpaGreaterThanOrEqualTo
			and sat >= @SatGreaterThanOrEqualTo
			and LastName = @StudentLastName
		ORDER BY lastname;
END
go
EXEC GetAllStudents @StudentLastName = 'Robinson';