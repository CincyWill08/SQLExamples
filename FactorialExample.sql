declare @factorialnbr int = 5;
declare	@count int=1;
declare @FactorialResult int = 0;
declare @OrigNbr int = 0;

set @OrigNbr = @factorialnbr;
while @count < @OrigNbr
begin
	set @factorialnbr = @factorialnbr * @count;
	set @count = @count + 1;
end

print concat(@OrigNbr, + ' factorial is ', + @factorialnbr);