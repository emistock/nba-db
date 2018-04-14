/*--
--debugging tables (table reset)
--*/
DROP TABLE IF EXISTS `player`;
DROP TABLE IF EXISTS `head_coach`;
DROP TABLE IF EXISTS `team`;
DROP TABLE IF EXISTS `playoffs`;
DROP TABLE IF EXISTS `conference`;
DROP TABLE IF EXISTS `teams_playoffs`;
/*--
--creating tables
--*/
CREATE TABLE `player` (
  id int AUTO_INCREMENT,
  team_id int,
  fname varchar(255) NOT NULL,
  lname varchar(255) NOT NULL,
  age int,
  fg float,
  ppg float,
  PRIMARY KEY(id),
  CONSTRAINT fk_p_1 FOREIGN KEY(team_id) REFERENCES team (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE `head_coach` (
  id int AUTO_INCREMENT,
  team_id int,
  fname varchar(255) NOT NULL,
  lname varchar(255) NOT NULL,
  age int,
  years int,
  PRIMARY KEY(id),
  CONSTRAINT unique_coach UNIQUE (fname, lname),
  CONSTRAINT fk_hc_1 FOREIGN KEY(team_id) REFERENCES team (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE `team` (
  id int AUTO_INCREMENT,
  coach_id int,
  conference_id int,
  name varchar(255) NOT NULL,
  standing int,
  wins int,
  losses int,
  ppg float,
  oppg float,
  PRIMARY KEY(id),
  CONSTRAINT fk_team_1 FOREIGN KEY(coach_id) REFERENCES head_coach (id) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT fk_team_2 FOREIGN KEY(conference_id) REFERENCES conference (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `playoffs`;
CREATE TABLE `playoffs` (
  id int AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY(id)
) ENGINE = InnoDB;

CREATE TABLE `conference` (
  id int AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY(id)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `teams_playoffs`;
CREATE TABLE `teams_playoffs` (
  team_id int NOT NULL,
  playoff_id int NOT NULL,
  PRIMARY KEY(team_id, playoff_id),
  FOREIGN KEY(team_id) REFERENCES team (id),
  FOREIGN KEY(playoff_id) REFERENCES playoffs (id)
) ENGINE = InnoDB;
