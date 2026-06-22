---ToTal Matches---
SELECT COUNT(*)FROM matches;
--Does winning the toss actually improve the chances of winning?---
SELECT
    ROUND(100.0 * SUM(CASE WHEN toss_won = winner THEN 1 ELSE 0 END) / COUNT(*),2) AS toss_win_impact
FROM matches;
---Which captains consistently win?---
SELECT
    home_captain captain,
    COUNT(*) wins
FROM matches
WHERE winner = home_team
GROUP BY home_captain

UNION ALL

SELECT
    away_captain,
    COUNT(*)
FROM matches
WHERE winner = away_team
GROUP BY away_captain;
-------------Which players influence matches most?---
SELECT
    pom,
    COUNT(*) awards
FROM matches
GROUP BY pom
ORDER BY awards DESC
LIMIT 10;
---------Which venues host exciting matches?--
SELECT
    venue_name,
    AVG(
        ABS(home_runs-away_runs)
    ) avg_margin
FROM matches
GROUP BY venue_name
ORDER BY avg_margin;
-------Toss Decission Success Rate--
SELECT decision,
       COUNT(*) AS matches,
       SUM(CASE
               WHEN toss_won = winner THEN 1
               ELSE 0
           END) AS wins_after_toss,
       ROUND(
           100.0 * SUM(CASE
                           WHEN toss_won = winner THEN 1
                           ELSE 0
                       END) / COUNT(*),
           2
       ) AS success_rate
FROM matches
GROUP BY decision;
----highest score in ipl---
SELECT max("1st_inning_score") from matches;
-----
SELECT winner,
COUNT(*) AS total_wins
FROM matches
GROUP BY winner
ORDER BY total_wins DESC;
