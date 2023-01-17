

--q2
drop procedure getTransaction 
create procedure getTransaction 
@sourceDep int,
@destDep int
as 
begin

with Recdest(SourceDep, DesDep, TrnDate, TrnTime, Amount, minDate, totalAmount) as (
--next
select SourceDep, DesDep, TrnDate, TrnTime, Amount,TrnDate, Amount
from Trn_Src_Dec
where Trn_Src_Dec.SourceDep=@sourceDep and Trn_Src_Dec.DesDep=@destDep

union all

select y.SourceDep, y.DesDep, y.TrnDate, y.TrnTime, y.Amount , min(y.TrnDate) over (partition by y.SourceDep) , Recdest.amount
from Recdest inner join Trn_Src_Dec as y
on y.SourceDep = Recdest.DesDep
where (y.TrnDate > Recdest.TrnDate or (y.TrnDate = Recdest.TrnDate and y.TrnTime > Recdest.TrnTime)) 

),

Recdest2 (SourceDep, DesDep, TrnDate, TrnTime, Amount, maxDate, totalAmount)as (
--previous
select SourceDep,DesDep,TrnDate, TrnTime,Amount, TrnDate, Amount
from Trn_Src_Dec 
where Trn_Src_Dec.SourceDep=@sourceDep and Trn_Src_Dec.DesDep=@destDep

union all

select x.SourceDep,x.DesDep,x.TrnDate,x.TrnTime,x.Amount, max(x.TrnDate) over (partition by x.DesDep), Recdest2.Amount
from Trn_Src_Dec as x inner join Recdest2
on x.DesDep = Recdest2.SourceDep
where (x.TrnDate < Recdest2.TrnDate or (x.TrnDate = Recdest2.TrnDate and x.TrnTime < Recdest2.TrnTime)) 


),

all_trn (SourceDep, DesDep, TrnDate, TrnTime, Amount, ADate, totalAmount) as(

select SourceDep, DesDep, TrnDate, TrnTime, Amount, minDate, totalAmount from Recdest
union
select SourceDep, DesDep, TrnDate, TrnTime, Amount, maxDate, totalAmount from Recdest2
),

one_two(SourceDep, DesDep, TrnDate, TrnTime, Amount, ADate, totalAmount, level) as(

select SourceDep, DesDep, TrnDate, TrnTime, Amount, ADate, totalAmount,
	case
		when SourceDep=@sourceDep and DesDep=@destDep then 0
		when trnDate=ADate and Amount=totalAmount then 1
		when trnDate=ADate then 2
		else 4
	end
	from all_trn
)



--all_trn (SourceDep, DesDep, TrnDate, TrnTime, Amount) as(
--select * from Recdest 
--union
--select * from Recdest2
--order by TrnDate,TrnTime asc
--),


--select * from Recdest 
--union
--select * from Recdest2
--order by TrnDate,TrnTime asc

select * from one_two
order by TrnDate,TrnTime asc

end

EXEC getTransaction @SourceDep=25, @destDep=87


-------------------------------------------------------------------------------------------------------------------

select * from Trn_Src_Dec