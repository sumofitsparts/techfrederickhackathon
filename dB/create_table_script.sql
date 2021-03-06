-- Tablespace: pg_global

-- DROP TABLESPACE pg_global;

-- ALTER TABLESPACE pg_global
  -- OWNER TO postgres;
  
 CREATE DATABASE will_is_bamf;

  
 CREATE TABLE teams (
    tname           varchar(40) UNIQUE NOT NULL,
    teamid          serial PRIMARY KEY
);

CREATE TABLE games (gameid serial PRIMARY KEY,
    gamename VARCHAR (40) UNIQUE NOT NULL
);

CREATE TABLE results (
    roundid          serial PRIMARY KEY,
    rtimestamp       time,
    teamid           int NOT NULL,
    gamenameid       int NOT NULL
);
CREATE TABLE scores (
    roundid       int,
    teamid        int,
    score         int
);
