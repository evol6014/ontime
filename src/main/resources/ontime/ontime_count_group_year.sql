
select year, month, 
       count(depdelay) as count, 
       avg(depdelay) as avg,
       min(depdelay) as min,
       max(depdelay) as max,
       stddev(depdelay) as stddev
  from ontime
 where depdelay > 0 
 group by year, month
 order by year, month;
