WITH ranked_queries AS (
    SELECT 
        *,
        LEAD(ts) OVER (PARTITION BY userid, deviceid ORDER BY ts) AS next_ts,
        LEAD(query) OVER (PARTITION BY userid, deviceid ORDER BY ts) AS next_query
    FROM query
),
is_final_calc AS (
    SELECT 
        year,
        month,
        day,
        userid,
        ts,
        devicetype,
        deviceid,
        query,
        next_query,
        CASE 
            WHEN next_ts IS NULL THEN 1
            WHEN (next_ts - ts) > 180 THEN 1
            WHEN (LENGTH(next_query) < LENGTH(query) AND (next_ts - ts) > 60) THEN 2
            ELSE 0
        END AS is_final
    FROM ranked_queries
)
SELECT *
FROM is_final_calc
WHERE 
    (is_final = 1 OR is_final = 2) 
    AND devicetype = 'android'
    AND year = 2024 AND month = 11 AND day = 19;
