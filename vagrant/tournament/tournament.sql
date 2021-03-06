-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
--DROP DATABASE IF EXISTS tournament;
--CREATE DATABASE tournament;

\c tournament;

DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS matches;

CREATE TABLE players(
	id serial PRIMARY KEY,
	name text
);

CREATE TABLE matches(
	id int REFERENCES players(id),
	matches_played int,
	matches_won int,
	matches_lost int,
	match_id serial PRIMARY KEY
);
