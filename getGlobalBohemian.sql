 SELECT
    global.date,
    global.song,
    global.playcount,
    global.ranking
   FROM global
   WHERE global.artist='Queen'
   	AND global.song LIKE '%Bohemian%'
   ORDER BY global.date;