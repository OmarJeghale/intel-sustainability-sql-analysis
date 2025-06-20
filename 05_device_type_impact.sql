-- Impact grouped by device type
WITH device_ages AS (
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
    impact.device_id = device.device_id
)
  
SELECT 
  device_type,
  COUNT(*) AS total_devices,
  AVG(energy_savings_yr) AS avg_energy_savings,
  AVG(co2_saved_kg_yr) / 1000 AS avg_emissions_saved_tons
FROM device_ages
GROUP BY device_type;
