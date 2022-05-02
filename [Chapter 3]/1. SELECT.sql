USE EDU -- [EDU] 데이터베이스 사용

SELECT * FROM [Member] -- [Member] 테이블의 모든 컬럼 조회

---------------
SELECT *
FROM [Member]
WHERE gender = 'man'  -- gender가 man인 데이터만 조회

---------------

SELECT addr, COUNT(mem_no) AS [회원수집계]  -- alias를 사용하여 컬럼명 임의로 변경
FROM [Member]
WHERE gender = 'man'  -- gender가 man인 데이터만 조회
GROUP BY addr  -- 데이터를 addr의 값을 그룹화하여 회원수 집계

---------------

SELECT addr, gender, COUNT(mem_no) AS [회원수집계]
FROM [Member]
WHERE gender = 'man'
GROUP BY addr, gender -- addr, gender의 값을 그룹화하여 회원수 집계
-- gender에 man만 나오는 이유는 WHERE 절이 GROUP BY절보다 먼저 실행되었기 때문임

---------------

SELECT addr, COUNT(mem_no) AS [회원수집계]
FROM [Member]
WHERE gender = 'man'
GROUP BY addr
HAVING COUNT(mem_no) >= 50   -- 회원수집계가 50 이상인 것만 출력
-- HAVING은 GROUP BY된 테이블을 특정 조건으로 필터하는 명령어
-- WHERE은 테이블의 행을 특정 조건으로 필터하는 명령어

---------------

SELECT addr, COUNT(mem_no) AS [회원수집계]
FROM [Member]
WHERE gender = 'man'
GROUP BY addr
HAVING COUNT(mem_no) >= 50
ORDER BY COUNT(mem_no) DESC  -- 회원수집계를 기준으로 행들을 내림차순하여 정렬 (ASC는 오름차순)

-- SQL 문법 순서 : SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY
-- SQL 실행 순서 : FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY (SELECT만 다름)
