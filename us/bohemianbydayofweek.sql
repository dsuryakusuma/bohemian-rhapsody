SELECT (CAST(extract(dow from CAST("public"."us"."date" AS timestamp)) AS integer) + 1) AS "date", sum("public"."us"."playcount") AS "sum"
FROM "public"."us"
WHERE "public"."us"."song" = ?
GROUP BY (CAST(extract(dow from CAST("public"."us"."date" AS timestamp)) AS integer) + 1)
ORDER BY (CAST(extract(dow from CAST("public"."us"."date" AS timestamp)) AS integer) + 1) ASC
