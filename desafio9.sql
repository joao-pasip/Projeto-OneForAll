SELECT
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.user AS USUARIO
    JOIN SpotifyClone.user_history AS HISTORY ON USUARIO.hist_id = HISTORY.user_id
WHERE
    USUARIO.name = "Bill";
