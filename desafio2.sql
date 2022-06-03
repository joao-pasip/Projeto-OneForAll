SELECT
    COUNT(DISTINCT(songs.id)) AS cancoes,
    COUNT(DISTINCT(artist.id)) AS artistas,
    COUNT(DISTINCT(albuns.id)) AS albuns
FROM
    SpotifyClone.song AS songs
    JOIN SpotifyClone.album AS albuns ON songs.album_id = albuns.id
    JOIN SpotifyClone.artists AS artist ON albuns.artist_id = artist.id;
