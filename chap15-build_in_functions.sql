/* build_in_functions*/

-- 1. 문자열 관련 함수
-- ASCII : 아스키코드 값을 추출
-- CHAR : 아스키코드에서 문자 추출

select ASCII('A'), char(65);

-- BIT_LENGTH : 할당된 비트 크기 반환 	-- 1BYTE = 8BIT
-- CHAR_LENGTH : 문자열의 길이 반환
-- LENGTH : 할당된 BYTE 크기를 반환

SELECT BIT_LENGTH('pie'), CHAR_LENGTH('pie'), LENGTH('pie');
SELECT 
	menu_name,
    BIT_LENGTH(menu_name),
    CHAR_LENGTH(menu_name),
    LENGTH(menu_name)
FROM
	tbl_menu;
    
-- concat : 문자열을 이어붙임
-- concat_ws 구분자와 함께 문자열을 이어붙임
-- concat_ws(구분자, 문자열1, 문자열2)
select concat('호랑이', '기린','판다');
select concat_ws('-','2024','02','23');

-- elt : 해당 위치의 문자열을 반환
-- elt(위치, 문자열1, 문자열2,...)

-- field : 찾을 문자열 위치 반환
-- field(찾을 문자열, 문자열1, 문자열2,...)

-- find_in_set : 찾을 문자열의 위치 반환