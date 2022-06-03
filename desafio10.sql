SELECT
    SONG.name AS nome,
    COUNT(*) AS reproducoes
FROM
    SpotifyClone.song AS SONG
    JOIN SpotifyClone.user_history AS HISTORY ON SONG.id = HISTORY.song_id
    JOIN SpotifyClone.user AS `USER` ON USER.id = HISTORY.user_id
WHERE
    USER.plan_id IN(1, 2)
GROUP BY
    nome
ORDER BY
    reproducoes DESC,
    nome ASC;
