USE EDU --[EDU] 데이터베이스를 사용합니다.

--MWS라는 유저에게 [회원테이블] 권한 부여
-- SELECT, INSERT, UPDATE, DELETE 권한을 줌
-- WITH GRANT OPTION : 특정 사용자가 받은 권한을 다른 사용자에게 부여할 수 있는 명령어
GRANT SELECT, INSERT, UPDATE, DELETE ON [회원테이블] TO MWS WITH GRANT OPTION

--MWS라는 유저에게 [회원테이블] 권한 제거
-- SELECT, INSERT, UPDATE, DELETE 권한을 제거
-- CASCADE : 특정 사용자가 다른 사용자에게 부여한 권한도 연쇄적으로 취소할 수 있는 명령어
REVOKE SELECT, INSERT, UPDATE, DELETE ON [회원테이블] TO MWS CASCADE