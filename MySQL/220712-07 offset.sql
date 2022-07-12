select * from country;
select * from country limit 1 Offset 2;
select * from country limit 2, 1; -- offset 숫자 먼저 나오고 limit 숫자

-- page 나누기.

select * from country limit 10 offset 0;
select * from country limit 10 offset 10;
select * from country limit 10 offset 20;

