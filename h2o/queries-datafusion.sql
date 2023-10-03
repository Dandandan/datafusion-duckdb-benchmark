select id1, sum(v1) as v1 from h2o group by id1;
select id1, id2, sum(v1) as v1 from h2o group by id1, id2;
select id3, sum(v1) as v1, mean(v3) as v3 from h2o group by id3;
select id4, mean(v1) as v1, mean(v2) as v2, mean(v3) as v3 from h2o group by id4;
select id6, sum(v1) as v1, sum(v2) as v2, sum(v3) as v3 from h2o group by id6;
select id4, id5, median(v3) as median_v3, stddev(v3) as sd_v3 from h2o group by id4, id5;
select id3, max(v1)-min(v2) as range_v1_v2 from h2o group by id3;
select id6, largest2_v3 from (select id6, v3 as largest2_v3, row_number() over (partition by id6 order by v3 desc) as order_v3 from h2o where v3 is not null) sub_query where order_v3 <= 2;
select id2, id4, pow(corr(v1, v2), 2) as r2 from h2o group by id2, id4;
select id1, id2, id3, id4, id5, id6, sum(v3) as v3, count(*) as count from h2o group by id1, id2, id3, id4, id5, id6;
