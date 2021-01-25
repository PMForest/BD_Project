SELECT DISTINCT
    rec_calendar.users_id, expenses.users_id, expenses.date
FROM
    rec_calendar,
    expenses
WHERE
   expenses.users_id = rec_calendar.users_id > (expenses.date LIKE '2021-01-%');
        
