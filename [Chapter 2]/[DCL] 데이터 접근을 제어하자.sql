USE EDU --[EDU] �����ͺ��̽��� ����մϴ�.

--MWS��� �������� [ȸ�����̺�] ���� �ο�
-- SELECT, INSERT, UPDATE, DELETE ������ ��
-- WITH GRANT OPTION : Ư�� ����ڰ� ���� ������ �ٸ� ����ڿ��� �ο��� �� �ִ� ��ɾ�
GRANT SELECT, INSERT, UPDATE, DELETE ON [ȸ�����̺�] TO MWS WITH GRANT OPTION

--MWS��� �������� [ȸ�����̺�] ���� ����
-- SELECT, INSERT, UPDATE, DELETE ������ ����
-- CASCADE : Ư�� ����ڰ� �ٸ� ����ڿ��� �ο��� ���ѵ� ���������� ����� �� �ִ� ��ɾ�
REVOKE SELECT, INSERT, UPDATE, DELETE ON [ȸ�����̺�] TO MWS CASCADE