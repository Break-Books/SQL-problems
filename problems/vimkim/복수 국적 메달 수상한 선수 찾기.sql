-- 틀
SELECT
    a.name,
    t.team
FROM
    athletes a
    JOIN records r ON a.id = r.athlete_id
    JOIN teams t ON r.team_id = t.id
    JOIN games g ON r.game_id = g.id
WHERE
    g.year >= 2000
    AND r.medal IS NOT NULL
GROUP BY
    a.id
HAVING
    COUNT(DISTINCT t.team) > 1
ORDER BY
    a.name ASC
;