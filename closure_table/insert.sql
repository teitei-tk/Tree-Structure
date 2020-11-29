-- folder
INSERT INTO `closure_table`
(
    name
)
VALUES
(
    "Macintosh HD"
);

-- tree paths
INSERT INTO `tree_paths`
(
    ancestor, descendant
)
SELECT
    t.ancestor, LAST_INSERT_ID() as descendant
FROM
    tree_paths as t
WHERE
    t.descendant = 4
UNION ALL
    SELECT LAST_INSERT_ID(), LAST_INSERT_ID();
