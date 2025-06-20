-- Add device_age column (2024 - model_year)
SELECT 
  *, 
  (2024 - device.model_year) AS device_age 
FROM 
  intel.impact_data AS impact 
INNER JOIN 
  intel.device_data AS device 
ON 
  impact.device_id = device.device_id;
