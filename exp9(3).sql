DELIMITER $$

CREATE PROCEDURE getcustomer_invoice(IN cust_id INT)
BEGIN
    SELECT cust_name, ph_no 
    FROM customers 
    WHERE cust_id = cust_id;

    SELECT inv_id, inv_date 
    FROM invoice
    WHERE cust_id = cust_id;
END $$

DELIMITER ;
