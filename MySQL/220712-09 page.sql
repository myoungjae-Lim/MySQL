Set @rowCount := 239;
Set @pageNumber := 5;
Set @pagePer := 10;
set @pageOffset := (@pageNumber - 1) * @pagePer;
set @totalPage := ceil(@rowCount / @pagePer); -- 계산 수식 작성

-- 239행을 가지는 country 테이블을 각 페이지별 행의 개수와 보고자 하는 페이지 번호를 정하면 
-- 해당 row들을 조회할 수 있는 SELECT 문을 작성해보기

select @totalPage;

prepare STMT from 'select * from country Limit ?,?';
execute STMT USING @pageOffset, @pagePer;