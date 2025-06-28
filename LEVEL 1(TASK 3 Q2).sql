#Calculate the percentage  of restaurants in each price range category
USE tasks;
SELECT 
    `Price range`, 
    COUNT(*) AS restaurant_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cognifyz), 2) AS percentage
FROM 
    cognifyz
GROUP BY 
    `Price range`
ORDER BY 
    `Price range`;
