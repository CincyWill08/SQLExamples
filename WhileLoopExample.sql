declare @nbr int = 1;

while @nbr <= 10
begin
	if @nbr % 2 = 0 
		begin
			print concat('The Number ', @nbr, ' is EVEN');
		END 
	ELSE 
		BEGIN
			PRINT concat('The Number ', @nbr, ' is ODD');
		END
	set @nbr = @nbr + 1;
end
