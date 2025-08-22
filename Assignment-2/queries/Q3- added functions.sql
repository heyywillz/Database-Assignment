UPDATE public."Customers"
SET phone = '0503248731'
WHERE first_name = 'Kinsley';

UPDATE public."Customers"
SET address = 'Krachi', city = 'Oti'
WHERE last_name = 'Mensah';

DELETE FROM public."Customers"
WHERE last_name = 'Donkor';

SELECT * FROM public."Customers";
