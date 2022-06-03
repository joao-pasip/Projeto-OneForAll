SELECT
    myUser.name AS usuario,
    COUNT(*) AS qtde_musicas_ouvidas,
    ROUND(SUM((duration) / 60), 2) AS total_minutos
FROM
    SpotifyClone.song AS songs
    JOIN SpotifyClone.user_history AS history ON history.song_id = songs.id
    JOIN SpotifyClone.user AS myUser ON history.user_id = myUser.id
GROUP BY
    usuario
ORDER BY
    usuario ASC;
