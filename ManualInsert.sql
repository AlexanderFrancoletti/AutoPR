INSERT INTO public.tournaments(
	id, name, day)
	VALUES (1, 'rmw51', CAST('2020/01/14' as date));

INSERT INTO public.players(
	id, tag, numevents)
	VALUES (1, 'mankow', 1),
		   (2, 'kogs', 1),
		   (3, 'Slam', 1),
		   (4, 'Zephyr', 1),
		   (5, 'waly', 1),
		   (6, 'JCcoolguy', 1),
		   (7, 'Rhyne', 1);

INSERT INTO public.head2head(
	p1id, p2id, winrate)
	VALUES (1, 2, NULL),
			(1, 3, NULL),
			(1, 4, NULL),
			(1, 5, NULL),
			(1, 6, NULL),
			(1, 7, NULL),
			(2, 3, NULL),
			(2, 4, NULL),
			(2, 5, NULL),
			(2, 6, NULL),
			(2, 7, NULL),
			(3, 4, NULL),
			(3, 5, NULL),
			(3, 6, NULL),
			(3, 7, NULL),
			(4, 5, NULL),
			(4, 6, NULL),
			(4, 7, NULL),
			(5, 6, NULL),
			(5, 7, NULL),
			(6, 7, NULL);

INSERT INTO public.match(
	id, tid, p1id, p2id, winner)
	VALUES (5, 1, 1, 4, 1),
			(1, 1, 4, 5, 4),
			(2, 1, 2, 7, 2),
			(3, 1, 3, 6, 3),
			(4, 1, 6, 7, 6),
			(6, 1, 2, 3, 2),
			(7, 1, 4, 6, 4),
			(8, 1, 3, 5, 3),
			(9, 1, 3, 4, 3),
			(10, 1, 1, 2, 1),
			(11, 1, 2, 3, 2),
			(12, 1, 1, 2, 1);