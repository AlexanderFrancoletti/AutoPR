-- Database: AutoPR

-- DROP DATABASE "AutoPR";

--edit from initTables.sql in sublime	

CREATE TABLE players(
	id 		int not null 
	,tag		varchar(100)
	,numEvents	int
	, primary key (id));

CREATE TABLE tournaments(
	id		int not null
	,name		varchar(100)
	,day		date
    , primary key (id));

CREATE TABLE head2head(
	p1id	int not null
	,p2id		int not null
	,winrate	float
	, primary key (p1id, p2id));

CREATE TABLE match(
	id		int not null
	,tid		int not null
	,p1id		int not null
	,p2id		int not null
	,p1score	int
	,p2score	int
    ,primary key (id)
	, foreign key (tid) references tournaments(id)
	, foreign key (p1id, p2id) references head2head(p1id, p2id));

COMMENT ON DATABASE "AutoPR"
    IS 'AutoPR database';