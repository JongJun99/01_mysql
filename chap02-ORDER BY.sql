/*ORDER BY*/

select
	menu_code,
    menu_name,
    menu_price
From
	tbl_menu
ORDER BY
-- menu_price ASC;			-- ASC는 오름차순
	menu_price;


SELECT
		menu_code,
        menu_name,
        menu_price
FROM
		tbl_menu
ORDER BY
		menu_price DESC;	-- DESC는 내림차순
        
SELECT 
	menu_code,
    menu_name,
    menu_price
FROM
	tbl_menu
ORDER BY
	menu_price DESC,
    menu_name ASC;
    
SELECT 
	menu_code,
    menu_price,
    menu_code * menu_price
FROM 
	tbl_menu
ORDER BY
	menu_code * menu_price;
    
SELECT FIELD('A', 'A', 'B', 'C');
SELECT FIELD('B', 'A', 'B', 'C');

SELECT 
	field(orderable_status, 'N', 'Y')
FROM
	tbl_menu;
    
select
	menu_name,
    orderable_status,
    field(orderable_status, 'N', 'Y')
FROM
	tbl_menu
ORDER BY field(orderable_status, 'N', 'Y');

select
	category_code,
    category_name,
    ref_category_code
from
	tbl_category
ORDER BY
	-- ref_category_code; -- 오름차순 시 NULL 값이 가장 위에 나타난다.(DEFAULT)
	ref_category_code IS NULL ASC; -- NULL값이 가장 아래로 간다.
    
    
select 
	category_code,
    category_name,
    ref_category_code
FROM
	tbl_category
order by
	-- ref_category_code DESC; 	-- NULL값이 아래에 있음(DEFUALT)
	ref_category_code IS NULL DESC,   -- NULL값이 가장 위로 온다.
	ref_category_code DESC;
    


