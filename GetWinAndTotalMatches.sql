SELECT
	p1.tag,
	p2.tag,
	count(*) as total,
	(SELECT count(*)
	 FROM
		players p1,
		players p2,
		match m
	 WHERE
		p1.tag = 'kogs'
		AND p2.tag = 'mankow'
		AND (p1.id = m.p1id or p2.id = m.p1id)
		AND (p2.id = m.p2id or p1.id = m.p2id)
		AND m.winner = p1.id) as wins
FROM
	players p1,
	players p2,
	match m
WHERE
	p1.tag = 'kogs'
	AND p2.tag = 'mankow'
	AND (p1.id = m.p1id or p2.id = m.p1id)
	AND (p2.id = m.p2id or p1.id = m.p2id)
GROUP BY
	p1.tag,
	p2.tag;