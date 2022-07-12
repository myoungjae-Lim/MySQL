-- 세션(Session) 변수(Variable)
Set @myVar := 10; -- 세션 변수에는 이름에 @가 들어감 := <- 대입연산자 

select @myVar * 10 + 5;