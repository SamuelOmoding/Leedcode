-- transaction_id is column with unique values for this table.
-- This table contains information about the transactions made during the visit_id.
 

-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

-- Return the result table sorted in any order.


Select Visits.customer_id, COUNT(Visits.visit_id) as count_no_trans from Visits left join Transactions on Transactions.visit_id = Visits.visit_id where Transactions.visit_id is null group by Visits.customer_id;
