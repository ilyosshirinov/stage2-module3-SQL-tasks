select * from Student WHERE birthday IS NOT NULL;

select * from mark WHERE mark > 1 and mark < 10 and subject_id IS NOT NULL;

select * from SUBJECT Where grade > 1 and grade < 5;

select * from payment Where type_id IS NOT NULL and amount IS NOT NULL and payment_date IS NOT NULL;
