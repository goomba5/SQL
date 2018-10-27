

-- Select *
Select * From Product;
Select * From LineItem;
Select * From Invoice;

-- Select * Products Where ListPrice < 55
Select * From Product 
Where ListPrice < 55;

-- Select all products order by code
Select * From Product
Order By Code;

-- Select all products order by price
Select * From Product
Order By ListPrice;

-- Select * Where ID = int
Select * From Product
Where ID = 2;

-- Select code and listprice where price is less than 55
Select Code, ListPrice From Product
Where ListPrice < 55
Order By ListPrice;

-- Select code and listprice where price is less than 55 order by code
Select Code, ListPrice From Product
Where ListPrice < 55
Order By Code;

-- Insert three new products
Insert into Product (Code, Description, ListPrice)
Values ('andr', 'Murach''s Android Programming Thing', '25.99');


Insert into Product (Code, Description, ListPrice)
Values ('iOS', 'Murach''s Swift Programming Thing', '31.99');


Insert into Product (Code, Description, ListPrice)
Values ('cobol', 'Murach''s Cobol Programming Thing', '0.99');

-- Update two columns in the product table
Update Product
Set Code = 'linux'
Where Code = 'cobol';

Update Product
Set Description = 'Murach''s Linux Programming Book Thing'
Where Code = 'linux';