SELECT 
users.id,
CONCAT(users.firstname, ' ', users.lastname) as user,
services.id as id_services,
services.services_name,
services.price,
reviews.text
FROM users, services, reviews
WHERE 
users.id = reviews.users_id AND services.id = reviews.services_id;