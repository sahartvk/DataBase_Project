
create view CodeValidation
as

with add_zero(ID,code) as (
	select CID, case
					when len(Natcod)=8 then '00'+ NatCod
					when len(NatCod)=9 then '0'+ NatCod 
				end
	from customer
),
temp(ID, Control) as(
	select CID, (
						 cast(substring(Code, 10, 10) as int)*10+
						 cast(substring(Code, 9, 9) as int)*9+
						 cast(substring(Code, 8, 8) as int)*8+
						 cast(substring(Code, 7, 7) as int)*7+
						 cast(substring(Code, 6, 6) as int)*6+
						 cast(substring(Code, 5, 5) as int)*5+
						 cast(substring(Code, 4, 4) as int)*4+
						 cast(substring(Code, 3, 3) as int)*3+
						 cast(substring(Code, 2, 2) as int)*2) % 11
	from customer inner join add_zero on CID=ID
)

select CID, Name, NatCod, Add_, tel,
	case
		when len(NatCod)<8 or len(NatCod)>10 then 'false'
		when control < 2 and control = cast(right(NatCod,1) as int) then 'true'
		when control > 2 and 11 - control = cast(right(NatCod,1) as int) then 'true'
		else 'false'
	end as NatCode_validation			
from customer inner join temp on ID=CID





select * from CodeValidation