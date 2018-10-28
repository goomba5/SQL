-- Select all from accounts table
Select * From Accounts;

-- Select all from transactions table
Select * From Transactions;

-- Select all from accounts where balance is greater than 5,000
-- Order By descending Balance
Select * From Accounts
Where Balance > 5000
Order By Balance DESC;

-- Select all from accounts where balance is less than 5000
-- Order By ascending balance
Select * From Accounts
Where Balance < 5000
Order By Balance ASC;

-- Select all from transactions where amount is less than 500
-- Order by descending amount
Select * From Transactions
Where Amount < 500
Order By Amount DESC;

-- Select all from transaction where txn_type is deposit
Select * From Transactions
Where Txn_type = 'Deposit';