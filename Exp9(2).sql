DELIMITER //

CREATE PROCEDURE great_num(a INT, b INT, c INT)
BEGIN
    IF a > b AND a > c THEN
        SELECT a AS 'Greatest';
    ELSEIF b > a AND b > c THEN
        SELECT b AS 'Greatest';
    ELSE
        SELECT c AS 'Greatest';
    END IF;
END //

DELIMITER ;

CALL great_num(4, 5, 6);
