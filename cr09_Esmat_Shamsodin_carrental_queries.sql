
/*returning the first name that are starting with m*/
SELECT first_name FROM customer WHERE first_name LIKE'm%';

/*returning the invoice price that are over than 100*/ 
SELECT amount FROM invoice WHERE amount>= 100;


/*inner join return the reservation id with the first name  and last name*/
SELECT  reservation.reservation_id , customer.first_name, customer.last_name
FROM reservation
INNER JOIN Customer ON reservation.reservation_id  = Customer.coustomer_id;

/*inner join returning the reservation id with car's reserved date*/
SELECT  car.reserved_date , reservation.reservation_id 
FROM car
INNER JOIN reservation ON car.Car_id  = reservation.reservation_id;

/* right join to retern reservation id with invoice serial number and the price that have to be paied*/
SELECT reservation.reservation_id, invoice.serialnumber,invoice.amount
FROM reservation
RIGHT JOIN invoice ON reservation.invoice_id_fk = invoice.invoice_id
ORDER BY reservation.reservation_id;

