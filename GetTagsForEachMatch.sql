--Should give me each players tag in addition to every match in the table
SELECT p1.tag,
		p2.tag,
		p1.id,
		p2.id,
		m.winner
FROM public.match m,
	 public.players p1,
	 public.players p2
WHERE
	p1.id != p2.id
	AND (m.p1id = p1.id)
	AND (m.p2id = p2.id)
ORDER BY m.id;
		 