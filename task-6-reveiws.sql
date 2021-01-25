SELECT 
    users.id,
    reviews.users_id,
    reviews.text,
    reviews.data,
    CONCAT(users.firstname, '', users.lastname) as user
FROM
    users
 LEFT JOIN reviews ON users.id = reviews.users_id
 UNION
 SELECT 
    users.id,
    reviews.users_id,
    reviews.text,
    reviews.data,
    CONCAT(users.firstname, '', users.lastname) as user
FROM
    users
 RIGHT JOIN reviews ON users.id = reviews.users_id


    
	
	
