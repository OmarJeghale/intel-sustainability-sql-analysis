-- Add age bucket column: newer, mid-age, older
SELECT 
  *, 
  (2024 - device.model_year) AS device_age,
  CASE  
    WHEN (2024 - device.model_year) <= 3 THEN 'newer' 
    WHEN (2024 - device.model_year) <= 6 THEN 'mid-age' 
    ELSE 'older' 
  END AS device_age_bucket 
FROM 
  intel.impact_data AS impact 
INNER JOIN 
  intel.device_data AS device 
ON 
  impact.device_id = device.device_id;
