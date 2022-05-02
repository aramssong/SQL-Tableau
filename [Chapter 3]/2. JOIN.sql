USE EDU

-- 1. INNER JOIN : 공통된 요소들을 통해 결합하는 조인 방식
-- [Member]과 [Order] 테이블 공통 값(mem_no) 결합
SELECT *
FROM [Member] AS A  -- Member 테이블의 별칭을 A로 지정
INNER JOIN [Order] AS B  -- Order 테이블의 별칭을 B로 지정
ON A.mem_no = B.mem_no  -- 두 테이블의 공통 값(mem_no)으로 결합
-- ON : 두 테이블의 연결 조건을 지정하는 명령어

------------------

-- 2. Outer JOIN : 공통 값이 매칭되는 데이터 + 매칭되지 않는 데이터도 조회하는 명령어

-- 2.1 LEFT JOIN : 왼쪽 테이블 기준으로 데이터 조회
-- 공통 값(mem_no) 결합 + 매칭 안 되는 Member 데이터 조회
SELECT *
FROM [Member] A  -- 왼쪽 테이블
LEFT JOIN [Order] B  -- 오른쪽 테이블
ON A.mem_no = B.mem_no

------------------

-- 2.2 Right JOIN : 오른쪽 테이블 기준 데이터 조회
-- 공통 값(mem_no) 결합 + 매칭 안 되는 Order 데이터 조회
-- 회원가입 후 주문이 가능하여 Null 값이 없음
SELECT *
FROM [Member] A
RIGHT JOIN [Order] B
ON A.mem_no = B.mem_no

------------------

-- 2.3 Full JOIN : 양쪽 테이블 기준 데이터 조회
-- 공통 값(mem_no) 결합 + 매칭 안 되는 Member와 Order 데이터 조회
SELECT *
FROM [Member] A
FULL JOIN [Order] B
ON A.mem_no = B.mem_no

------------------

-- 3. Other JOIN
-- 3.1 Cross JOIN : 두 테이블의 행을 결합한 데이터 조회 (n x m)
SELECT *
FROM [Member] A
CROSS JOIN [Order] B
WHERE A.mem_no = '1000001'  -- mem_no가 '1000001'인 데이터 출력
-- mem_no는 Member와 Order 테이블에 모두 있기에 정확한 테이블 명을 기재해야 함 (A.mem_no)

------------------

-- 3.2 Self JOIN : 한 테이블(Member)을 두 테이블(A, B)로 하여 행을 결합한 데이터 조회
-- Member 행 x Member 행
SELECT *
FROM [Member] A, [Member] B
WHERE A.mem_no = '1000001'
-- mem_no 컬럼은 Member A와 Member B 테이블에 모두 있기에 A.mem_no로 정확한 테이블의 열을 명시해야 함
