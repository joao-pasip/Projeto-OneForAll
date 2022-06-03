SELECT
    ARTIST.name AS "artista",
    ALBUM.name AS "album",
    COUNT(FAVORITE.artist_id) AS seguidores
FROM
    SpotifyClone.artists AS ARTIST
    JOIN SpotifyClone.album AS ALBUM ON ARTIST.id = ALBUM.artist_id
    JOIN SpotifyClone.user_favorite_artist AS FAVORITE ON FAVORITE.artist_id = ARTIST.id
GROUP BY
    album,
    artista
ORDER BY
    seguidores DESC,
    artista,
    album ASC;
