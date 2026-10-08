-- Average salary by industry (NGN, full range only)
SELECT 
    "Industry",
    ROUND(AVG((min_salary + max_salary) / 2)::NUMERIC, 2) AS avg_salary,
    COUNT(*) AS jobs_counted
FROM job_postings
WHERE currency = 'NGN' AND salary_type = 'Range'
GROUP BY "Industry"
ORDER BY avg_salary DESC;