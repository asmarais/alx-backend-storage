-- Create a procedure called AddBonus
DELIMITER $$

CREATE PROCEDURE AddBonus(user_id INT, project_name varchar(255), score INT)
BEGIN
	
    	INSERT INTO projects(name)
    	SELECT project_name FROM DUAL
    	WHERE NOT EXISTS(SELECT * FROM projects WHERE name = project_name LIMIT 1);
    	
	INSERT INTO corrections(user_id, project_id, score) 
    	VALUES (
    	user_id,
    	(SELECT id FROM projects WHERE name = project_name),
    	score); 
END $$

DELIMITER ;

