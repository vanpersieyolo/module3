DELIMITER //
drop procedure findAllCustomers
CREATE PROCEDURE findAllCustomers()

BEGIN

  SELECT * FROM customers;

END //

DELIMITER ;
call findAllCustomers;