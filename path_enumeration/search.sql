SELECT
    pe.*,
    CONCAT(pe.path, "%") as LikeQuery
FROM
    path_enumeration AS pe
WHERE
    "1/5/6/8" LIKE CONCAT(pe.path, "%");

-- SELECT
--     pe.*,
--     CONCAT("1/5/", "%") AS LikeQuery
-- FROM
--     path_enumeration AS pe
-- WHERE
--     pe.path LIKE CONCAT("1/5/", "%");
--