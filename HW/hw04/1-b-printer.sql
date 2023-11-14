DELIMITER $$
CREATE TRIGGER no_exist_printer
BEFORE INSERT ON printer
FOR EACH ROW
BEGIN
	IF EXISTS (SELECT 1 FROM laptop where model = NEW.model) THEN
     -- 如果存在，可以執行相應的操作，例如拋出錯誤或選擇其他操作
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = 'Data already exists in the laptop table',
     MYSQL_ERRNO = 1001;
   ELSEIF EXISTS (SELECT 1 FROM pc where model = NEW.model) THEN
     -- 如果存在，可以執行相應的操作，例如拋出錯誤或選擇其他操作
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = 'Data already exists in the pc table',
     MYSQL_ERRNO = 1001;
   ELSEIF EXISTS (SELECT 1 FROM printer where model = NEW.model) THEN
     -- 如果存在，可以執行相應的操作，例如拋出錯誤或選擇其他操作
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = 'Data already exists in the printer table',
     MYSQL_ERRNO = 1001;
   END IF;
END;
$$
DELIMITER ;