USE GANESHA;
CREATE function FUNC1 (A int,B INT,C INT)
RETURNS varchar(100) 
deterministic
DELIMITER //
BEGIN
if A+B>C
AND B+C>A
AND C+A>B 
THEN return 'true';
ELSE RETURN 'false';
END IF;
END ; //
DELIMITER ;
