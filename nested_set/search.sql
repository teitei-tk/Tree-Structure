-- descendant
SELECT
	s2.*
FROM
	nested_set as s1
INNER JOIN
	nested_set as s2
ON
	s2.nsleft BETWEEN s1.nsleft AND s1.nsright
WHERE
	s1.id = 5

--  ancestor
--  SELECT
--    s1.*, s2.*
--  FROM
--    nested_set as s1
--  INNER JOIN
--    nested_set as s2
--  ON
--    s1.nsleft BETWEEN s2.nsleft AND s2.nsright
--  WHERE
--    s1.id = 5
--