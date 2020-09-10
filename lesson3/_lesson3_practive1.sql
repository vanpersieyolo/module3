use classicmodels;
select productCode, productName, buyprice, quantityInStock from products
where buyprice > 56.76 and quantityInStock >10 ;
select productCode, productName, buyprice, textDescription from products 
join productlines 
on products.productline = productlines.productline 
where buyprice > 56.76 and buyprice < 95.59;

select productCode, productName, buyprice, quantityInStock,productVendor,productLine from products
where productline = 'classic Cars' or productVendor = 'Min Lin Diecast'
