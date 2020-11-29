-- remove node
DELETE FROM
    `tree_paths`
WHERE
    descendant = LAST_INSERT_ID();

-- remove subtree

DELETE FROM
	`tree_paths`
WHERE
	descendant IN (
        SELECT
            x.id
        FROM
            (
                SELECT
                    descendant as id
                FROM
                    `tree_paths`
                WHERE
                    ancestor = 6
            ) as x
    )