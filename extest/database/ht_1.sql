SELECT emp_id, NAME
FROM employees
;
SELECT*
FROM titles
;

-- 테이블에서 특정 컬럼만 조회하는 방법
SELECT emp_id, NAME
FROM employees
;
-- ↑employees 테이블에서 emp_id와 name에 대한 정보를 추출하라

SELECT*
FROM employees
;
-- ↑employees 테이블에 있는 모든 자료를 추출하라

SELECT*
FROM titles
;
-- ↑titles에 있는 모든 자료를 추출하라

-- Q.직급 테이블의 모든 데이터를 조회하라
SELECT*
FROM titles
;

-- Q. 모든 사원의 직책과 사번을 조회하라
SELECT 
-- 코드확인해서 기입하기
FROM employees
;


-- Q.현재 직급이 T005인 사원의 사번과 이름을 조회하여 출력하라
SELECT
	employees.emp_id
	,employees.name
FROM employees
WHERE employees.emp_id IN(
	SELECT title_emps.emp_id
	FROM title_emps
	WHERE
		title_emps.end_at IS null
	AND title_emps.title_code = 'T005'
	)
	;
/* ↑
1.employees테이블에 속한 사번과 이름을 다음조건과 같이 출력한다
2. 
*/