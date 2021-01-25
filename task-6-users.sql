SELECT id, number_visits, 'users' AS type FROM users WHERE number_visits > 10
UNION
SELECT id, cash_services, 'cash' AS type FROM cash
