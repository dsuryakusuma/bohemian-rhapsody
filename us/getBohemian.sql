 SELECT us.date,
    us.playcount,
    us.ranking,
    us.song
   FROM us
  WHERE us.artist = 'Queen'::text AND us.song ~~ '%Bohemian%'::text
  ORDER BY us.date;