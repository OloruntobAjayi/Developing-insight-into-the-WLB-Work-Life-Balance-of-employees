Create Database Practice_Session;

--UPDATING OVERALL RATING 

UPDATE EMPLOYEE_REVIEW
SET OVERALL_RATING = ROUND((SELECT AVG(OVERALL_RATING) FROM EMPLOYEE_REVIEW WHERE OVERALL_RATING IS NOT NULL), 0)
WHERE OVERALL_RATING IS NULL;

--UPDATING WORK_LIFE_BALANCE

UPDATE EMPLOYEE_REVIEW
SET WORK_LIFE_BALANCE = ROUND((SELECT AVG(WORK_LIFE_BALANCE) FROM EMPLOYEE_REVIEW WHERE WORK_LIFE_BALANCE IS NOT NULL), 0)
 WHERE WORK_LIFE_BALANCE IS NULL;
 
--UPDATING SKILL_DEVELOPMENT
UPDATE EMPLOYEE_REVIEW
SET SKILL_DEVELOPMENT = ROUND((SELECT AVG(SKILL_DEVELOPMENT) FROM EMPLOYEE_REVIEW WHERE SKILL_DEVELOPMENT IS NOT NULL), 0)
 WHERE SKILL_DEVELOPMENT IS NULL;

--UPDATING SALARY_AND_BENEFITS

 UPDATE EMPLOYEE_REVIEW
SET SALARY_AND_BENEFITS = ROUND((SELECT AVG(SALARY_AND_BENEFITS) FROM EMPLOYEE_REVIEW WHERE SALARY_AND_BENEFITS IS NOT NULL), 0)
 WHERE SALARY_AND_BENEFITS IS NULL;
 
--UPDATING JOB_SECURITY

 UPDATE EMPLOYEE_REVIEW
SET JOB_SECURITY = ROUND((SELECT AVG(JOB_SECURITY) FROM EMPLOYEE_REVIEW WHERE JOB_SECURITY IS NOT NULL), 0)
 WHERE JOB_SECURITY IS NULL;

--UPDATING CAREER_GROWTH

 UPDATE EMPLOYEE_REVIEW
SET CAREER_GROWTH = ROUND((SELECT AVG(CAREER_GROWTH) FROM EMPLOYEE_REVIEW WHERE CAREER_GROWTH IS NOT NULL), 0)
 WHERE CAREER_GROWTH IS NULL;

--UPDATING WORK_SATISFACTION

 UPDATE EMPLOYEE_REVIEW
SET WORK_SATISFACTION = ROUND((SELECT AVG(WORK_SATISFACTION) FROM EMPLOYEE_REVIEW WHERE WORK_SATISFACTION IS NOT NULL), 0)
 WHERE WORK_SATISFACTION IS NULL;

--QUESTION 1 FROM TASK 2 

SELECT TITLE, DEPARTMENT, WORK_LIFE_BALANCE, SALARY_AND_BENEFITS 
FROM EMPLOYEE_REVIEW
WHERE
DEPARTMENT = 'SOFTWARE DEVELOPMENT DEPARTMENT'
AND WORK_LIFE_BALANCE > 4 
AND SALARY_AND_BENEFITS > 4.5;


-- QUESTION 2 FROM TASK 2
SELECT *,
    CASE
        WHEN (overall_rating + work_life_balance + skill_development + 
              salary_and_benefits + job_security + career_growth + work_satisfaction) / 7 > 3
        THEN 'Good'
        WHEN (overall_rating) > 4 AND (work_life_balance) > 4 AND (skill_development) > 4 AND 
            (salary_and_benefits) > 4 AND (job_security) > 4 AND (career_growth) > 4 AND (work_satisfaction) > 4
        THEN 'Excellent'
        ELSE 'Poor'
    END AS Remark
FROM EMPLOYEE_REVIEW;



