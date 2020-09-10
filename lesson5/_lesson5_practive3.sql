DELIMITER //
DROP PROCEDURE IF EXISTS getCusById //
CREATE PROCEDURE getCusById
(IN cusNum INT(11))
BEGIN
  SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;

call getCusById(175);

select * from customers
where customerNumber = 175;