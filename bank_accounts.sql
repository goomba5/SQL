-- Create bank accounts database
DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

-- Create Accounts table
CREATE TABLE Accounts (
	ID						INT							primary key auto_increment,
    Account_holder	VARCHAR(50)		not null,
    Balance				DECIMAL(10,2)		not null,
    Fees					DECIMAL(10,2)		not null
);

-- Create Transactions table
CREATE TABLE Transactions (
	ID						INT							primary key auto_increment,
    Amount				DECIMAL(10,2)		not null,
    Txn_type				VARCHAR(50)		not null,
    Accounts_ID		INT							not null,
	FOREIGN KEY (Accounts_ID) REFERENCES Accounts (ID)
);

-- Insert Values for the Accounts table
INSERT Accounts (ID, Account_holder, Balance, Fees)
VALUES (1,'Gary Henderson', 8888.00, 250.00);

INSERT Accounts (ID, Account_holder, Balance, Fees)
VALUES (2,'Meagan Hansen', 5444.00, 175.00);

INSERT Accounts (ID, Account_holder, Balance, Fees)
VALUES (3,'Nick Law', 3333.00, 88.00);

INSERT Accounts (ID, Account_holder, Balance, Fees)
VALUES (4,'Yelena Lapina', 3322.00, 88.00);


-- Insert Values for the Transactions table
INSERT Transactions (ID, Amount, Txn_type, Accounts_ID)
VALUES (1, 500.00, 'Deposit', 3);

INSERT Transactions (ID, Amount, Txn_type, Accounts_ID)
VALUES (2, -200.00, 'Withdrawal', 4);

INSERT Transactions (ID, Amount, Txn_type, Accounts_ID)
VALUES (3, 200.00, 'Deposit', 4);

INSERT Transactions (ID, Amount, Txn_type, Accounts_ID)
VALUES (4, 248.00, 'Deposit', 1);
