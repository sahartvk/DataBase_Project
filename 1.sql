
create view CodeValidation
as
begin

with temp as(ID, Code, Control) as(
	select CID, (cast(substring(LPAD(NatCode, 10, '0')), 10, 10) as int)*10+
						 cast(substring(LPAD(NatCode, 10, '0')), 9, 9) as int)*9+
						 cast(substring(LPAD(NatCode, 10, '0')), 8, 8) as int)*8+
						 cast(substring(LPAD(NatCode, 10, '0')), 7, 7) as int)*7+
						 cast(substring(LPAD(NatCode, 10, '0')), 6, 6) as int)*6+
						 cast(substring(LPAD(NatCode, 10, '0')), 5, 5) as int)*5+
						 cast(substring(LPAD(NatCode, 10, '0')), 4, 4) as int)*4+
						 cast(substring(LPAD(NatCode, 10, '0')), 3, 3) as int)*3+
						 cast(substring(LPAD(NatCode, 10, '0')), 2, 2) as int)*2) % 11
	from customer
)

select CID, Name, NatCode, Add, tel,
	case
		when len(NatCode)<8 or len(NatCode)>10 then 'false'
		when control < 2 and control = cast(right(NatCode,1) as int) then 'true'
		then control > 2 and 11 - control = cast(right(NatCode,1) as int) then 'true'
		else 'false'
			
from customer inner join temp on ID=CID

end

