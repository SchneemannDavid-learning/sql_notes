-- Relationships 

	-- Joins
    
## taking 2 tables and combining into one "super table"
## Relationship Types

-- INNER JOIN SYNTAX
## example:
SELECT 	users.id,
		users.name,
        users.email,
        users.role_id,
        roles.id,
        roles.name
        
FROM users
JOIN roles ON users.role_id = roles.id;

## OR:
SELECT 	*
        
FROM users
JOIN roles ON users.role_id = roles.id;


-- instead of JOIN, ON; if foreign key has same name, we can use shortcut JOIN, USING
SELECT * from dept_manager
JOIN departments USING (dept_no)