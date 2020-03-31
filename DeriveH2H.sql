--This query gets the total number of matches between 2 players by name
SELECT 
	p1.tag,
	p2.tag,
	count(*) as numPlayed
FROM
	players p1,
	players p2,
	match m
WHERE
	p1.tag = 'waly'
	AND p2.tag = 'Zephyr'
	AND (p1.id = m.p1id or p2.id = m.p1id)
	AND (p2.id = m.p2id or p1.id = m.p2id)
--Adding this line will show the number of wins by p1
--	AND m.winner = p1.id
GROUP BY
	p1.tag,
	p2.tag

--Setup a subquery/with statement to get both values to use to calculate the winrate