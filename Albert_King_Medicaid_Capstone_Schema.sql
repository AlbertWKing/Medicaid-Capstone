create schema med;

use med;

create table d91 (utilization_type tinytext,
state tinytext,
ndc tinytext,
labeler_code int(4),
product_code int(4),
package_size int(4),
year int(4),
quarter int(1),
suppression_used tinytext,
product_name text,
units_reimbursed int,
number_of_prescriptions int,
total_amount_reimbursed int,
medicaide_amount_reimbursed int,
non_medical_amount_reimbursed int
);

drop table d91;

select * from d91 WHERE number_of_prescriptions != 0 LIMIT 50;

create table d22 (utilization_type tinytext,
state tinytext,
ndc tinytext,
labeler_code int(4),
product_code int(4),
package_size int(4),
year int(4),
quarter int(1),
suppression_used tinytext,
product_name text,
units_reimbursed int,
number_of_prescriptions int,
total_amount_reimbursed int,
medicaide_amount_reimbursed int,
non_medical_amount_reimbursed int
);

select * from d92 WHERE number_of_prescriptions != 0 LIMIT 50;
select count(*) from d21 where state = 'FL' LIMIT 10;
select * from ndc limit 10;

use med;

select * from d19 where product_name = 'TRULICITY ' limit 10;

create table d91 (utilization_type tinytext,
state tinytext,
ndc tinytext,
labeler_code int(4),
product_code int(4),
package_size int(4),
year int(4),
quarter int(1),
suppression_used tinytext,
product_name varchar(140),
units_reimbursed int,
number_of_prescriptions int,
total_amount_reimbursed int,
medicaide_amount_reimbursed int,
non_medical_amount_reimbursed int
);

use medicaid;

select * from d91 limit 10;

select * from d91 where product_name =  limit 10;

use med;
select COUNT(PRODUCTNDC) from ndc where PHARM_CLASSES != '';
select * from ndc where PHARM_CLASSES != '' LIMIT 5;

use medicaid;
select * from d00 limit 10;
SELECT count(*) AS anyName FROM information_schema.columns WHERE table_name = 'd00';
SELECT COUNT(*) AS Columns FROM INFORMATION_SCHEMA.COLUMNS WHERE table_schema = 'medicaid' AND table_name = 'd00';
SELECT count(*) as 'Rows' FROM d91;
SELECT MAX(quarter) as qtr FROM d22;

SELECT quarter AS 'Quarter', state as 'State', SUM(number_of_prescriptions) AS 'Rxs' FROM d22 GROUP BY state, quarter;
DROP TABLE d91;