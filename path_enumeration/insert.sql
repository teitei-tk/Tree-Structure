INSERT INTO `path_enumeration`
    (
        name
    )
VALUES
    (
        "Music"
    );

Update
    `path_enumeration`
SET
    path = CONCAT((
        SELECT
            x.path
        FROM (
            SELECT
                path
            FROM
                path_enumeration
            WHERE
                id = 1
        ) as x
    ), LAST_INSERT_ID())
WHERE
    id = LAST_INSERT_ID();
