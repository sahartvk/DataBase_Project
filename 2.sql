--q2
create procedure getTransaction 
@sourceDep int,
@destDep int
as 
begin

with RECURSIVE Recdest (SourceDep,DesDep) as (
select SourceDep,DesDep,TrnDate
from Trn_Src_Dec where Trn_Src_Dec.SourceDep=@sourceDep and Trn_Src_Dec.DesDep=@destDep

union 
select Recdest.SourceDep,Recdest.DesDep,Recdest.TrnDate
from Trn_Src_Dec,Recdest
where Recdest.SourceDep = Trn_Src_Dec.DesDep  and Recdest.TrnDate>=Trn_Src_Dec.TrnDate
order by Recdest.TrnDate,Recdest.Amount

union 
select Recdest.SourceDep,Recdest.DesDep,Recdest.TrnDate
from Trn_Src_Dec,Recdest
where Recdest.DesDep = Trn_Src_Dec.SourceDep and Recdest.TrnDate<=Trn_Src_Dec.TrnDate
--previous transaction
)

select * from Recdest


end

EXEC getTransaction @SourceDep=25, @destDep=87