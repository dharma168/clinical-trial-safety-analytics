create database clinical_dataset;

USE clinical_dataset;

select *
from final_clinical_dataset;

# High-risk patients

SELECT SUBID, AE_COUNT, LB_COUNT, RISK
FROM final_clinical_dataset
WHERE RISK = "High";

# Average AE burden

SELECT ROUND(AVG(AE_COUNT), 2) AS AVG_AE
FROM final_clinical_dataset;

# Severity distribution

SELECT MAX_AE_GRADE, COUNT(*) AS patients
FROM final_clinical_dataset
GROUP BY MAX_AE_GRADE
ORDER BY MAX_AE_GRADE;

# Lab burden by risk

SELECT RISK,
       ROUND(AVG(LB_COUNT), 2) AS avg_lab_count
FROM final_clinical_dataset
GROUP BY RISK;
