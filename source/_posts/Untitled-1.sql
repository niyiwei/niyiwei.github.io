CREATE FUNCTION fn_search(cid INT) 
    RETURNS CHAR(10) 
    DETERMINISTIC 
BEGIN
    DECLARE SEX CHAR(10);
    SELECT cust_sex INTO SEX FROM customers WHERE cust_id = cid;
    IF SEX IS NULL THEN
        RETURN(SELECT '没有该客户');
    ELSE IF SEX = 'f' THEN
        RETURN(SELECT '女');
    ELSE RETURN(SELECT '男');
    END IF
    ;
    END IF;
END $$