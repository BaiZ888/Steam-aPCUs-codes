SELECT
	*
FROM
	steam_DailyPCU_EachGames
WHERE
	appid = 730
AND yearweek(recordDate, 1) = 202415;
