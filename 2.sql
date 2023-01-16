--q2
create procedure getTransaction 
@sourceDep int,
@destDep int
as 
begin

with Recdest as (
select SourceDep,DesDep,TrnDate
from Trn_Src_Dec where Trn_Src_Dec.SourceDep=@sourceDep and Trn_Src_Dec.DesDep=@destDep

union all
select e.SourceDep,e.DesDep,e.TrnDate
from Trn_Src_Dec as e 
inner join 
Recdest as r 
on r.SourceDep = e.DesDep
where r.TrnDate>=e.TrnDate

union all
select t.SourceDep,t.DesDep,t.TrnDate
from Trn_Src_Dec as t
inner join 
Recdest as r2 
on r2.DesDep = t.SourceDep
where r2.TrnDate<=t.TrnDate--previous transaction
)

select * from Recdest


end

EXEC getTransaction @SourceDep=25, @destDep=87


-------------------------------------------------------------------------------------------------------------------

