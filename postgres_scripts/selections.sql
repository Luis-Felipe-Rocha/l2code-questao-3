-- Select the name, day of month and parcel value of those with overdue payment.
SELECT p.person_name AS name, date_part ('day', pt.dt_payment) AS day_month, c.parcel_value
FROM person AS P
INNER JOIN payment AS PT
ON p.id_person=pt.person
INNER JOIN contract AS C
ON p.contract=c.id_contract
WHERE p.overdue=true;

-- Select name and total paid of those with up-to-date payment.
SELECT p.person_name AS name, c.parcel_value*c.qt_parcels AS total_value
FROM person as P
INNER JOIN contract AS C
ON p.contract=c.id_contract
WHERE p.overdue=false;