-- 1. Albert Engineer
INSERT INTO employee (Name, Position, JoinDate, YearOfExperience, Salary)
VALUES ('Albert', 'Engineer', '2024-01-24', 2.5, 50);

-- 2. Update salary Engineer ke 85
UPDATE employee
SET Salary = 85
WHERE Position = 'Engineer';

-- 3. Total salary di tahun 2021
SELECT SUM(Salary) AS total_salary_2021
FROM employee
WHERE YEAR(JoinDate) <= 2021 
  AND (ReleaseDate IS NULL OR YEAR(ReleaseDate) >= 2021);

-- 4. Top 3 Years of Experience
SELECT Name, Position, YearOfExperience
FROM employee
ORDER BY YearOfExperience DESC
LIMIT 3;

-- 5. Subquery Engineer kurang dari sama dengan 3 tahun
SELECT *
FROM employee
WHERE Position = 'Engineer'
  AND YearOfExperience <= 3;
