CREATE DATABASE AutoPR;

CREATE TABLE players(
	id 		int not null
	,tag		varchar(100)
	,numEvents	int);

CREATE TABLE match(
	id		int not null
	,tid		int not null
	,p1id		int not null
	,p2id		int not null
	,p1score	int
	,p2score	int);

CREATE TABLE tournaments(
	id		int not null
	,name		varchar(100)
	,day		date);

CREATE TABLE head2head(
	p1id	int not null
	,p2id		int not null
	,winrate	float);

--This should be every table and every piece of data I want to store

