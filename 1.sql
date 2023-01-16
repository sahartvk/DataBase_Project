
create view CodeValidation
as

with add_zero(ID,code) as (
	select CID, case
					when len(Natcod)=8 then '00'+ NatCod
					when len(NatCod)=9 then '0'+ NatCod
					else NatCod
				end
	from customer
),
temp(ID, Control) as(
	select CID, (cast(right(left(Code, 1),1) as int)*10+
				 cast(right(left(Code, 2),1) as int)*9+
				 cast(right(left(Code, 3),1) as int)*8+
				 cast(right(left(Code, 4),1) as int)*7+
				 cast(right(left(Code, 5),1) as int)*6+
				 cast(right(left(Code, 6),1) as int)*5+
				 cast(right(left(Code, 7),1) as int)*4+
				 cast(right(left(Code, 8),1) as int)*3+
				 cast(right(left(Code, 9),1) as int)*2) % 11
	from customer inner join add_zero on CID=ID
)

select CID, Name, NatCod, Add_, tel,control,11-control as q,
	case
		when len(NatCod)<8 or len(NatCod)>10 then 'false'
		when control < 2 and control = cast(right(NatCod,1) as int) then 'true'
		when control > 2 and (11 - control) = cast(right(NatCod,1) as int) then 'true'
		else 'false'
	end as NatCode_validation			
from customer inner join temp on ID=CID



drop view CodeValidation

select * from CodeValidation
