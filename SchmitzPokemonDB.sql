--create type table--
DROP TABLE IF EXISTS Types;
CREATE TABLE Types (
	tid	text not null,
	wknsNormal numeric(2,1),
	wknsFire numeric(2,1),
	wknsWater numeric(2,1),
	wknsElectric numeric(2,1),
	wknsGrass numeric(2,1),
	wknsIce numeric(2,1),
	wknsFighting numeric(2,1),
	wknsPoison numeric(2,1),
	wknsGround numeric(2,1),
	wknsFlying numeric(2,1),
	wknsPsychic numeric(2,1),
	wknsBug numeric(2,1),
	wknsRock numeric(2,1),
	wknsGhost numeric(2,1),
	wknsDragon numeric(2,1),
	wknsDark numeric(2,1),
	wknsSteel numeric(2,1),
	wknsFairy numeric(2,1),
	primary key(tid)
);

INSERT INTO Types( tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Normal', 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Fire', 1, .5, 2, 1, .5, .5, 1, 1, 2, 1, 1, .5, 2, 1, 1, 1, .5, .5);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Water', 1, .5, .5, 2, 2, .5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, .5, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Electric', 1, 1, 1, .5, 1, 1, 1, 1, 2, .5, 1, 1, 1, 1, 1, 1, .5, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Grass', 1, 2, .5, .5, .5, 2, 1, 2, .5, 2, 1, 2, 1, 1, 1, 1, .5, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Ice', 1, 2, 1, 1, 1, .5, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Fighting', 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, .5, .5, 1, 1, .5, 1, 2);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Poison', 1, 1, 1, 1, .5, 1, .5, .5, 2, 1, 2, .5, 1, 1, 1, 1, 1, .5);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Ground', 1, 1, 2, 0, 2, 2, 1, .5, 1, 1, 1, 1, .5, 1, 1, 1, 1, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Flying', 1, 1, 1, 2, 1, 2, .5, 1, 0, 1, 1, .5, 2, 1, 1, 1, 1, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Psychic', 1, 1, 1, 1, 1, 1, .5, 1, 1, 1, .5, 2, 1, 2, 1, 2, 1, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Bug', 1, 2, 1, 1, .5, 1, .5, 1, .5, 2, 1, 1, 2, 1, 1, 1, 1, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Rock', .5, .5, 2, 1, 2, 1, 2, .5, 2, .5, 1, 1, 1, 1, 1, 1, 2, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Ghost', 0, 1, 1, 1, 1, 1, 0, .5, 1, 1, 1, .5, 1, 2, 1, 2, 1, 1);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Dragon', 1, .5, .5, .5, .5, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 2);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Dark', 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 0, 2, 1, .5, 1, .5, 1, 2);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Steel', .5, 2, 1, 1, .5, .5, 2, 0, 2, .5, .5, .5, .5, 1, .5, 1, .5, .5);
INSERT INTO Types (tid, wknsNormal, wknsFire, wknsWater, wknsElectric, wknsGrass,
	wknsIce, wknsFighting, wknsPoison, wknsGround, wknsFlying, wknsPsychic,	
	wknsBug, wknsRock, wknsGhost, wknsDragon, wknsDark, wknsSteel, wknsFairy) 
	VALUES('Fairy', 1, 1, 1, 1, 1, 1, .5, 2, 1, 1, 1, .5, 1, 1, 0, .5, 2, 1);

--types table properly builds
--select * from types

--create pokemon table
DROP TABLE IF EXISTS Pokemon;
CREATE TABLE Pokemon (
  dexID     numeric(4,0) not null,
  species   text,
  Type1     text not null references Types(tid),
  Type2     text references Types(tid),
  baseHP    integer not null,
  baseAtk   integer not null,
  baseDef   integer not null,
  baseSpAtk integer not null,
  baseSpDef integer not null,
  baseSpd   integer not null,
  primary key(dexID)
);

--add a few basic test pokemon--
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd)
	VALUES(0001, 'Charmander', 'Fire', NULL, 39, 52, 43, 60, 50, 65 );


--verify results--
SELECT * FROM Pokemon;
