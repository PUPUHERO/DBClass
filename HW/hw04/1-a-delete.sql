DELIMITER $$
CREATE TRIGGER at_least_1500_2
AFTER DELETE ON laptop
FOR EACH ROW
BEGIN
	DECLARE avg_price DECIMAL(10, 2);

	-- 計算新的平均值
	SELECT AVG(price) INTO avg_price
	FROM laptop;
	
	-- 檢查是否平均值低於 1500
	IF avg_price < 1500 THEN
	  -- 如果是，則刪除新增的數據
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Error: average issue',
		MYSQL_ERRNO = 1001;
	END IF;
END;
$$
DELIMITER ;