/* WHERE */

SELECT
	menu_name,
    menu_price
FROM
	tbl_menu
WHERE
	menu_name LIKE '%마늘%';   -- '%' : 0개 이상의 임의의 문자 '_' : 하나의 임의의 문자
    
SELECT
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
FROM
	tbl_menu
WHERE
	menu_price > 5000 AND
    category_code = 10 AND
    menu_name LIKE '%갈치%';

SELECT
	menu_name,
    menu_price
FROM
	tbl_menu
WHERE
	menu_name NOT LIKE '%마늘%'
ORDER BY
	menu_name;
    
SELECT 
	menu_name,
    category_code
FROM
	tbl_menu
WHERE
	category_code = 4 OR
	category_code = 5 OR
    category_code = 6
ORDER BY
	category_code;
    
SELECT
	menu_name,
    category_code
FROM
	tbl_menu
WHERE
	category_code IN (4, 5, 6)
    -- category_code NOT IN (4, 5, 6)  -- 부정표현
ORDER BY
	category_code;
    
SELECT
	category_code,
    category_name,
    ref_category_code
FROM
	tbl_category
WHERE
	-- ref_category_code IS NULL;
    ref_category_code IS NOT NULL;