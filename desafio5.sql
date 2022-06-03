SELECT
    SONG.name AS cancao,
    COUNT(HISTORY.song_id) AS reproducoes
FROM
    SpotifyClone.song AS SONG
    JOIN SpotifyClone.user_history AS HISTORY ON SONG.id = HISTORY.song_id
GROUP BY
    cancao
ORDER BY
    reproducoes DESC,
    cancao
LIMIT
    2;
