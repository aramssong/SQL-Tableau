USE EDU -- [EDU] �����ͺ��̽� ���

SELECT * FROM [Member] -- [Member] ���̺��� ��� �÷� ��ȸ

---------------
SELECT *
FROM [Member]
WHERE gender = 'man'  -- gender�� man�� �����͸� ��ȸ

---------------

SELECT addr, COUNT(mem_no) AS [ȸ��������]  -- alias�� ����Ͽ� �÷��� ���Ƿ� ����
FROM [Member]
WHERE gender = 'man'  -- gender�� man�� �����͸� ��ȸ
GROUP BY addr  -- �����͸� addr�� ���� �׷�ȭ�Ͽ� ȸ���� ����

---------------

SELECT addr, gender, COUNT(mem_no) AS [ȸ��������]
FROM [Member]
WHERE gender = 'man'
GROUP BY addr, gender -- addr, gender�� ���� �׷�ȭ�Ͽ� ȸ���� ����
-- gender�� man�� ������ ������ WHERE ���� GROUP BY������ ���� ����Ǿ��� ������

---------------

SELECT addr, COUNT(mem_no) AS [ȸ��������]
FROM [Member]
WHERE gender = 'man'
GROUP BY addr
HAVING COUNT(mem_no) >= 50   -- ȸ�������谡 50 �̻��� �͸� ���
-- HAVING�� GROUP BY�� ���̺��� Ư�� �������� �����ϴ� ��ɾ�
-- WHERE�� ���̺��� ���� Ư�� �������� �����ϴ� ��ɾ�

---------------

SELECT addr, COUNT(mem_no) AS [ȸ��������]
FROM [Member]
WHERE gender = 'man'
GROUP BY addr
HAVING COUNT(mem_no) >= 50
ORDER BY COUNT(mem_no) DESC  -- ȸ�������踦 �������� ����� ���������Ͽ� ���� (ASC�� ��������)

-- SQL ���� ���� : SELECT �� FROM �� WHERE �� GROUP BY �� HAVING �� ORDER BY
-- SQL ���� ���� : FROM �� WHERE �� GROUP BY �� HAVING �� SELECT �� ORDER BY (SELECT�� �ٸ�)
