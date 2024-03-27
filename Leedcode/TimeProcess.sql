-- There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.

-- The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

-- The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

-- Return the result table in any order.

# Write your MySQL query statement below
SELECT 
    start.machine_id, 
    ROUND(AVG(end.timestamp-start.timestamp),3) as processing_time 
FROM Activity start
JOIN Activity end ON end.machine_id=start.machine_id
WHERE start.activity_type='start' AND end.activity_type='end'
GROUP BY start.machine_id