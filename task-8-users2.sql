SELECT 
	users.id, 
	users.firstname, 
	users.lastname, 
	users.gender, 
	users.birthday_at, 
	users.phone, 
	users.email,
	rec_calendar.second_date 
FROM 
	users, 
	rec_calendar
WHERE 
	users.id = rec_calendar.users_id;