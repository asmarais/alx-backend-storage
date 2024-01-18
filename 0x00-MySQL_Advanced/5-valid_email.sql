-- Creates a trigger that that resets the attribute valid_email only when the email has been changed.
DELIMITER $$
CREATE TRIGGER resets
BEFORE UPDATE
ON users
FOR EACH ROW
IF NEW.email != OLD.email THEN
SET NEW.valid_email = 0;
END IF;
$$
DELIMITER ;

