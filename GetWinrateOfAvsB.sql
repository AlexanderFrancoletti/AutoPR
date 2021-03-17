--This query returns the winrate of player 1 against player 2
SELECT
	p1.tag,
	p2.tag,
	h.winrate
FROM
	players p1,
	players p2,
	head2head h
WHERE
	p1.tag = 'player 1'
	AND p2.tag = 'opponent'
	AND h.p1id = p1.id
	AND h.p2id = p2.id
