-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE tournament;

CREATE TABLE players(
	id serial,
	name text,
	
	primary key(id)
	);


CREATE TABLE matches(
	id serial null references players(id),
	name text,
	matches_played int,
	matches_won int
);
