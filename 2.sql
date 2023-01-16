--q2
drop procedure getTransaction 
create procedure getTransaction 
@sourceDep int,
@destDep int
as 
begin

with Recdest as (
select SourceDep,DesDep,TrnDate,Amount
from Trn_Src_Dec where Trn_Src_Dec.SourceDep=@sourceDep and Trn_Src_Dec.DesDep=@destDep
--previous transaction
union all
select e.SourceDep,e.DesDep,e.TrnDate,e.Amount
from Trn_Src_Dec as e 
inner join 
Recdest as r 
on r.SourceDep = e.DesDep
where r.TrnDate>=e.TrnDate
),

Recdest2 as (
select SourceDep,DesDep,TrnDate,Amount
from Trn_Src_Dec where Trn_Src_Dec.SourceDep=@sourceDep and Trn_Src_Dec.DesDep=@destDep

union all
select e.SourceDep,e.DesDep,e.TrnDate,e.Amount
from Trn_Src_Dec as e
inner join 
Recdest2 as r 
on r.DesDep = e.SourceDep
where r.TrnDate<=e.TrnDate

--next transactions
)

select * from Recdest 
union all 
select * from Recdest2


end

EXEC getTransaction @SourceDep=25, @destDep=87


-------------------------------------------------------------------------------------------------------------------

select * from Trn_Src_Dec