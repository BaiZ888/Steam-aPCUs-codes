SELECT
	*
FROM
	(
		SELECT
			appid,
			AVG(peakInGame) AS C,
			COUNT(appid),
      YEARWEEK(recordDate, 1) AS `Week`
		FROM
			(
				SELECT
					*
				FROM
					steam_DailyPCU_EachGames
				WHERE
					YEARWEEK(recordDate, 1) = 202415
			) AS C
		GROUP BY
			appid
	) AS A
LEFT JOIN steam_DailyPCU_EachGames_List AS B ON A.appid = B.appid
ORDER BY
	C DESC;
