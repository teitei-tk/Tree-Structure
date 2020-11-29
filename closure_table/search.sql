-- descendant
SELECT
	c.*
FROM
	closure_table as c
INNER JOIN
	tree_paths as t
ON
	c.id = t.descendant
WHERE
	t.ancestor = 2

-- ancestor
-- SELECT
--   c.*
-- FROM
--   closure_table as c
-- INNER JOIN
--   tree_paths as t
-- ON
--   c.id = t.ancestor
-- WHERE
--   t.descendant = 8