-- Combine intel.device_data and intel.impact_data
SELECT 
  * 
FROM 
  intel.impact_data AS impact 
INNER JOIN 
  intel.device_data AS device 
ON 
  impact.device_id = device.device_id;
