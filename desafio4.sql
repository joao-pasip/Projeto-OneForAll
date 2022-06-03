SELECT
    name AS usuario,
    IF(
        YEAR(MAX(rep_date)) = 2021,
        "Usuário ativo",
        "Usuário inativo"
    ) AS condicao_usuario
FROM
    `SpotifyClone`.`user` AS TABLEUSUARIO
    JOIN `SpotifyClone`.user_history AS HISTORY ON HISTORY.user_id = TABLEUSUARIO.id
GROUP BY
    usuario
ORDER BY
    usuario ASC;
