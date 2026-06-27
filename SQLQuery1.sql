USE HR_Analytics;
GO

SELECT 
    [Age],
    [Department],
    [MonthlyIncome],
    [Gender],
    [MaritalStatus],
    [BusinessTravel],
    

    CASE 
        WHEN [Attrition] = 1 THEN 1
        ELSE 0 
    END AS [Attrition_Numeric],
    
   
    CASE 
        WHEN [Attrition] = 1 THEN 'Yes'
        ELSE 'No' 
    END AS [Attrition_Status]

FROM [HR-Employee-Attrition];