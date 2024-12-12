SELECT COUNT("english_title") AS "paintings" FROM "views"
WHERE "artist" = 'Hiroshige'
ORDER BY "entropy" DESC;
