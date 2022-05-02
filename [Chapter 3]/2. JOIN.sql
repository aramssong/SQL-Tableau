USE EDU

-- 1. INNER JOIN : ����� ��ҵ��� ���� �����ϴ� ���� ���
-- [Member]�� [Order] ���̺� ���� ��(mem_no) ����
SELECT *
FROM [Member] AS A  -- Member ���̺��� ��Ī�� A�� ����
INNER JOIN [Order] AS B  -- Order ���̺��� ��Ī�� B�� ����
ON A.mem_no = B.mem_no  -- �� ���̺��� ���� ��(mem_no)���� ����
-- ON : �� ���̺��� ���� ������ �����ϴ� ��ɾ�

------------------

-- 2. Outer JOIN : ���� ���� ��Ī�Ǵ� ������ + ��Ī���� �ʴ� �����͵� ��ȸ�ϴ� ��ɾ�

-- 2.1 LEFT JOIN : ���� ���̺� �������� ������ ��ȸ
-- ���� ��(mem_no) ���� + ��Ī �� �Ǵ� Member ������ ��ȸ
SELECT *
FROM [Member] A  -- ���� ���̺�
LEFT JOIN [Order] B  -- ������ ���̺�
ON A.mem_no = B.mem_no

------------------

-- 2.2 Right JOIN : ������ ���̺� ���� ������ ��ȸ
-- ���� ��(mem_no) ���� + ��Ī �� �Ǵ� Order ������ ��ȸ
-- ȸ������ �� �ֹ��� �����Ͽ� Null ���� ����
SELECT *
FROM [Member] A
RIGHT JOIN [Order] B
ON A.mem_no = B.mem_no

------------------

-- 2.3 Full JOIN : ���� ���̺� ���� ������ ��ȸ
-- ���� ��(mem_no) ���� + ��Ī �� �Ǵ� Member�� Order ������ ��ȸ
SELECT *
FROM [Member] A
FULL JOIN [Order] B
ON A.mem_no = B.mem_no

------------------

-- 3. Other JOIN
-- 3.1 Cross JOIN : �� ���̺��� ���� ������ ������ ��ȸ (n x m)
SELECT *
FROM [Member] A
CROSS JOIN [Order] B
WHERE A.mem_no = '1000001'  -- mem_no�� '1000001'�� ������ ���
-- mem_no�� Member�� Order ���̺� ��� �ֱ⿡ ��Ȯ�� ���̺� ���� �����ؾ� �� (A.mem_no)

------------------

-- 3.2 Self JOIN : �� ���̺�(Member)�� �� ���̺�(A, B)�� �Ͽ� ���� ������ ������ ��ȸ
-- Member �� x Member ��
SELECT *
FROM [Member] A, [Member] B
WHERE A.mem_no = '1000001'
-- mem_no �÷��� Member A�� Member B ���̺� ��� �ֱ⿡ A.mem_no�� ��Ȯ�� ���̺��� ���� ����ؾ� ��
