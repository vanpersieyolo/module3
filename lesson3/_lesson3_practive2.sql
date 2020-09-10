select customers.customerNumber	, customerName, phone, paymentDate, amount 
from customers join payments
on customers.customerNumber = payments.customerNumber
where city ='Las Vegas';

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber;

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers
join orders
on customers.customerNumber = orders.customerNumber;

select customers.customerNumber, customers.customerName, orders.orderNumber
from customers
left join orders on customers.customerNumber = orders.customerNumber
having orderNumber is null;