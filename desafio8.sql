SELECT
    artistas.name AS artista,
    albuns.name AS album
FROM
    SpotifyClone.artists AS artistas
    JOIN SpotifyClone.album AS albuns ON artistas.id = albuns.artist_id
WHERE
    artistas.name = "Walter Phoenix";
