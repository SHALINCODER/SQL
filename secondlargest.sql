use functions;
select * 
from (
    select *, 
           rank() over (partition by department order by mark desc) as Rank_Marks,
           dense_rank() over (partition by department order by mark desc) as DenseRank_Marks
    from students_details
) as ranked_students
where DenseRank_Marks = 2;
