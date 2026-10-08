-- Job postings count by location
SELECT 
    "Location",
    COUNT(*) AS total_postings
FROM job_postings
GROUP BY "Location"
ORDER BY total_postings DESC;