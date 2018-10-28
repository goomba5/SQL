
Select * From customer;

Select * From customer
Where state = 'CA'
Order By name DESC;

Select Name, City, State, Sales, Active AS 'Is Active?'
From customer
Where state = 'CA'
Order By name DESC;

Select * From customer
Where state = 'CA'
	AND city = 'Fresno'
Order By name DESC;