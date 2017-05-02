/*********************************
Pokedex database concept
designed and written by Charles Schmitz 
for Alan Labouseur's spring 2017 Database management course


..... I do not own pokemon.
**********************************/

/*************TO-DO*SECTION******************






***********************************/



--drop all objects--

drop function potentialmates(text);
DROP VIEW Evolve;
DROP VIEW Pokedex;
DROP TABLE IF EXISTS Storage;
DROP TABLE IF EXISTS Party;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS TMs;
DROP TABLE IF EXISTS Pokeballs;
DROP TABLE IF EXISTS Medicine;
DROP TABLE IF EXISTS Items;
DROP TABLE IF EXISTS Moveset;
DROP TABLE IF EXISTS Moves;
DROP TABLE IF EXISTS Status;
DROP TABLE IF EXISTS EggGroupMembers;
DROP TABLE IF EXISTS EggGroups;
DROP TABLE IF EXISTS Evolutions;
DROP TABLE IF EXISTS Pokemon;
DROP TABLE IF EXISTS Types;
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

--types table properly builds and is final
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
  --add gender ratios, we'll use male % as the only field, if not null and if !male then female. if field is null, poke is genderless (specific cases)
  pctMale numeric(4,3),
  baseHappiness integer not null,
 --egg groups should be done in a M-M relation table, will be easier to search compatibility instead of 
 --	listing both groups here and will reduce nulls as not all pokemon have two or even one(legendaries) egg group
  primary key(dexID)
);

--add a few basic test pokemon--
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0004, 'Charmander', 'Fire', NULL, 39, 52, 43, 60, 50, 65, .5, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0005, 'Charmeleon', 'Fire', NULL, 58, 64, 58, 80, 65, 80, .5, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0006, 'Charizard', 'Fire', 'Flying', 78, 84, 78, 109, 85, 100, .5, 70 );
--aura line
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0447, 'Riolu', 'Fighting', NULL, 40, 70, 40, 35, 40, 60 , .875, 70);
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0448, 'Lucario', 'Fighting', 'Steel', 70, 110, 70, 115, 70, 90, .875, 70 );
--fennekin line
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0653, 'Fennekin', 'Fire', NULL, 40, 45, 40, 62, 60, 60, .875, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0654, 'Braixen', 'Fire', NULL, 59, 59, 58, 90, 70, 73, .875, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0655, 'Delphox', 'Fire', 'Psychic', 75, 69, 72, 114, 100, 104, .875, 70 );
--sandshrew line
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0027, 'Sandshrew', 'Ground', NULL, 50, 75, 85, 20, 30, 40, .5, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0028, 'Sandslash', 'Ground', NULL, 75, 100, 110, 45, 55, 65, .5, 70 );
--eeveelutions
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0133, 'Eevee', 'Normal', NULL, 55, 55, 50, 45, 65, 55, .875, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0134, 'Vaporeon', 'Water', NULL, 130, 65, 60, 110, 95, 65, .875, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0135, 'Jolteon', 'Electric', NULL, 65, 65, 60, 110, 95, 130, .875, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0136, 'Flareon', 'Fire', NULL, 65, 130, 60, 95, 110, 62, .875, 70 );
--honchkrow line
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0198, 'Murkrow', 'Dark', 'Flying', 60, 85, 42, 85, 42, 91, .5, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0430, 'Honchkrow', 'Dark', 'Flying', 100, 125, 52, 105, 52, 71, .5, 70 );
--zapdos
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0145, 'Zapdos', 'Electric', 'Flying', 90, 90, 85, 125, 90, 100, NULL, 35 );
--ninetales line
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0037, 'Vulpix', 'Fire', NULL, 38, 41, 40, 50, 65, 65, .25, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0038, 'Ninetales', 'Fire', NULL, 73, 76, 75, 81, 100, 100, .25, 70 );
--garchomp (overpowered) (alan) line
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0443, 'Gible', 'Dragon', 'Ground', 58, 70, 45, 40, 45, 42, .50, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0444, 'Gabite', 'Dragon', 'Ground', 68, 90, 65, 50, 55, 82, .50, 70 );
INSERT INTO Pokemon(dexID, species, Type1, Type2, baseHP, baseAtk, baseDef, baseSpAtk, baseSpDef, baseSpd, pctMale, baseHappiness)
	VALUES(0445, 'Garchomp', 'Dragon', 'Ground', 108, 170, 115, 120, 95, 92, .50, 70 );



--insert into ... (yay), (oh), (this), (works);










CREATE TABLE Evolutions(
  pID numeric(4,0) not null references Pokemon(dexID),
  eID numeric(4,0) not null references Pokemon(dexID),
  levelRequired integer,
  method text,
--not all pokemon evolve on levelup, and some are really specific. this is a descriptor. easiest and most consistent way to do this
  primary key(pID, eID)
);

--add a few evolution examples--
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0004, 0005, 16, 'level up');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0005, 0006, 36, 'level up');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0447, 0448, 1, 'level up with maximum happiness during the day');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0653, 0654, 16, 'level up');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0654, 0655, 36, 'level up');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0027, 0028, 22, 'level up');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0133, 0134, 1, 'give a water stone');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0133, 0135, 1, 'give a thunder stone');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0133, 0136, 1, 'give a fire stone');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0198, 0430, 1, 'give a dusk stone');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0037, 0038, 1, 'give a fire stone');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0443, 0444, 24, 'level up');
INSERT INTO Evolutions(pID, eID, levelRequired, method)
	VALUES(0444, 0445, 48, 'level up');

CREATE TABLE EggGroups(
  gID integer not null,
  groupName text not null,
  primary key(gID)
--table created for consistency
);

INSERT INTO EggGroups(gID, groupName)
	VALUES(0, 'Monster');
INSERT INTO EggGroups(gID, groupName)
	VALUES(1, 'Dragon');
INSERT INTO EggGroups(gID, groupName)
	VALUES(2, 'Field');
INSERT INTO EggGroups(gID, groupName)
	VALUES(3, 'Human-Like');
INSERT INTO EggGroups(gID, groupName)
	VALUES(4, 'Flying');
	
CREATE TABLE EggGroupMembers(
  dexID numeric(4,0) not null references Pokemon(dexID),
  gID integer not null references EggGroups(gID),
  primary key (dexID, gID)
);
--add pokemon in pokemon table to appropriate egg groups
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0004, 0);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0004, 1);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0005, 0);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0005, 1);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0006, 0);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0006, 1);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0447, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0447, 3);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0448, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0448, 3);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0653, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0654, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0654, 3);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0655, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0655, 3);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0027, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0028, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0133, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0134, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0135, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0136, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0198, 4);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0430, 4);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0037, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0038, 2);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0443, 0);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0443, 1);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0444, 0);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0444, 1);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0445, 0);
INSERT INTO EggGroupMembers(dexID, gID)
	VALUES(0445, 1);
	
	
CREATE TABLE status(
  sID integer,
  statusname text,
  primary key(sID)
);

INSERT INTO status(sID, statusname)
	VALUES(0, 'Sleep');
INSERT INTO status(sID, statusname)
	VALUES(1, 'Burn');
INSERT INTO status(sID, statusname)
	VALUES(2, 'Paralysis');
INSERT INTO status(sID, statusname)
	VALUES(3, 'Freeze');
INSERT INTO status(sID, statusname)
	VALUES(4, 'Poison');
INSERT INTO status(sID, statusname)
	VALUES(5, 'Badly Poisoned');
INSERT INTO status(sID, statusname)
	VALUES(10, 'Flinch');
INSERT INTO status(sID, statusname)
	VALUES(11, 'Confused');
INSERT INTO status(sID, statusname)
	VALUES(12, 'Bind');
INSERT INTO status(sID, statusname)
	VALUES(13, 'Trap');
INSERT INTO status(sID, statusname)
	VALUES(14, 'Taunt');
INSERT INTO status(sID, statusname)
	VALUES(15, 'Encore');
INSERT INTO status(sID, statusname)
	VALUES(16, 'Protect');	

CREATE TABLE Moves(
  mID integer not null,
  MoveName text not null,
  type text not null references Types(tid),
  damtypespecial boolean,
  power integer,
  accuracy numeric(4,3),
  priority integer,
  statuseffect integer references status(sid),
  statuschance numeric(4,3),
  basePP integer not null,
  primary key(mID)
);

INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(0, 'Tackle', 'Normal', false, 50, 1, 0, NULL, NULL, 25);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(1, 'Ember', 'Fire', true, 40, 1, 0, NULL, NULL, 25);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(2, 'Water Gun', 'Water', true, 40, 1, 0, NULL, NULL, 25);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(3, 'Vine Whip', 'Grass', false, 45, 1, 0, NULL, NULL, 25);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(4, 'Rock Smash', 'Normal', false, 40, 1, 0, NULL, NULL, 15);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(5, 'Gust', 'Flying', false, 40, 1, 0, NULL, NULL, 25);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(6, 'Aura Sphere', 'Fighting', true, 80, NULL, 0, NULL, NULL, 20);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(7, 'Flash Cannon', 'Steel', true, 80, 1, 0, NULL, NULL, 10);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(8, 'Vacuum Wave', 'Fighting', true, 40, 1, 1, NULL, NULL, 30);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(9, 'Dark Pulse', 'Dark', true, 80, 1, 0, 10, .20, 15);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(10, 'Scratch', 'Normal', false, 40, 1, 0, NULL, NULL, 25);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(11, 'Quick Attack', 'Normal', false, 40, 1, 1, NULL, NULL, 30);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(12, 'Psybeam', 'Psychic', true, 65, 1, 0, 11, .10, 20);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(13, 'Flamethrower', 'Fire', true, 90, 1, 0, 1, .10, 15);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(14, 'Fury Cutter', 'Bug', false, 40, .95, 0, NULL, NULL, 20);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(15, 'Slash', 'Normal', false, 70, 1, 0, NULL, NULL, 20);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(16, 'Earthquake', 'Ground', false, 100, 1, 0, NULL, NULL, 10);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(17, 'Thunder Shock', 'Electric', true, 40, 1, 0, 2, .1, 30);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(18, 'Wing Attack', 'Flying', false, 60, 1, 0, NULL, NULL, 35);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(19, 'Sucker Punch', 'Dark', false, 80, 1, 1, NULL, NULL, 5);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(20, 'Thunder Wave', 'Dark', true, NULL, 1, 0, 2, 1, 20);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(21, 'Drill Peck', 'Flying', false, 80, 1, 0, NULL, NULL, 20);
	
	

INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(22, 'Dragon Claw', 'Dragon', false, 80, 1, 0, NULL, NULL, 15);
INSERT INTO Moves(mID, MoveName, type, damtypespecial, power, accuracy, priority, statuseffect, statuschance, basePP)
	VALUES(23, 'Outrage', 'Dragon', false, 100, 1, 0, NULL, NULL, 10);



CREATE TABLE Moveset(
  dexID numeric(4,0) not null references Pokemon(dexID),
  mID integer not null references Moves(mID),
  levelGained integer,
  primary key (dexID, mID)
);

INSERT INTO Moveset(dexID, mID, levelGained)
	VALUES(0004, 10, 0),
	(0005, 10, 0),
	(0006, 10, 0),
	(0004, 1, 7),
	(0005, 1, 7),
	(0006, 1, 7),
	(0447, 11, 0),
	(0448, 6, 0),
--INSERT INTO Moveset(dexID, mID, levelGained)
--	(0448, 6, 42),
--lucario gains Aura Sphere at 42 if not learned on evolve. cant add due to primary key. issue that needs fixing....
	(0448, 7, NULL),
	(0448, 8, NULL),
	(0448, 9, NULL),
	(0653, 1, 5),
	(0653, 12, 17),
	(0653, 13, 35),
	(0654, 1, 5),
	(0654, 12, 18),
	(0654, 13, 41),
	(0655, 1, 5),
	(0655, 12, 18),
	(0655, 13, 42),
	(0027, 10, 0),
	(0027, 14, 11),
	(0027, 15, 26),
	(0027, 16, 46),
	(0028, 10, 0),
	(0028, 14, 11),
	(0028, 15, 28),
	(0028, 16, 53),
	(0133, 0, 0),
	(0134, 0, 0),
	(0135, 0, 0),
	(0136, 0, 0),
	(0133, 11, 13),
	(0134, 11, 13),
	(0135, 11, 13),
	(0136, 11, 13),
	(0134, 2, 9),
	(0135, 17, 9),
	(0136, 1, 9),
	(0198, 18, 0),
	(0198, 19, 0),
	(0430, 18, 0),
	(0430, 19, 0),
	(0145, 17, 9),
	(0145, 20, 8),
	(0145, 21, 71),
	(0037, 1, 0),
	(0037, 11, 10),
	(0037, 13, 36),
	(0038, 11, 0),
	(0038, 13, 0),
	(0443, 0, 0),
	(0443, 15, 25),
	(0443, 22, 27),
	(0444, 0, 0),
	(0444, 15, 28),
	(0444, 22, 33),
	(0445, 0, 0),
	(0445, 15, 28),
	(0445, 22, 33),
	(0443, 23, NULL),
	(0444, 23, NULL),
	(0445, 23, NULL);

	
CREATE TABLE Items(
  itemID integer not null,
  itemName text not null,
  value integer,
  primary key(itemID)
);

INSERT INTO Items(itemID, itemName, value)
	VALUES(0,'Potion', 200);
INSERT INTO Items(itemID, itemName, value)
	VALUES(1,'Super Potion', 500);
INSERT INTO Items(itemID, itemName, value)
	VALUES(2,'Oran Berry', NULL);
INSERT INTO Items(itemID, itemName, value)
	VALUES(3,'Pokeball', 100);
INSERT INTO Items(itemID, itemName, value)
	VALUES(4,'Great Ball', 400);
INSERT INTO Items(itemID, itemName, value)
	VALUES(5,'TM91', NULL);
INSERT INTO Items(itemID, itemName, value)
	VALUES(6,'TM97', NULL);
INSERT INTO Items(itemID, itemName, value)
	VALUES(7,'Everstone', 200);
INSERT INTO Items(itemID, itemName, value)
	VALUES(8,'Water Stone', 5000);
INSERT INTO Items(itemID, itemName, value)
	VALUES(9,'Thunder Stone', 5000);
INSERT INTO Items(itemID, itemName, value)
	VALUES(10,'Fire Stone', 5000);
INSERT INTO Items(itemID, itemName, value)
	VALUES(11,'Dusk Stone', 5000);
		
CREATE TABLE Medicine(
  itemID integer references Items(itemID),
  healing integer,
  statusheal integer references status(sid),
  autoeat boolean not null,
  primary key(itemId)
);

INSERT INTO Medicine(itemID, healing, statusheal, autoeat)
	VALUES(0, 20, NULL, false);
INSERT INTO Medicine(itemID, healing, statusheal, autoeat)
	VALUES(1, 50, NULL, false);
INSERT INTO Medicine(itemID, healing, statusheal, autoeat)
	VALUES(2, 10, NULL, true);
	
CREATE TABLE Pokeballs(
  itemID integer references Items(itemID),
  modifier numeric(4,3),
  primary key(itemID)
);

INSERT INTO Pokeballs (itemID, modifier)
	VALUES (3, 1);
INSERT INTO Pokeballs (itemID, modifier)
	VALUES (4, 1.2);


CREATE TABLE TMs(
  itemID integer references Items(itemID),
  TMID integer unique,
  move integer references Moves(mid),
  primary key(itemID)
);

INSERT INTO TMs (itemID, TMID, move)
	VALUES (5, 91, 7);
	
INSERT INTO TMs (itemID, TMID, move)
	VALUES (6, 97, 9);

CREATE TABLE Inventory(
  itemID integer references Items(itemID),
  qty integer,
  primary key(itemID)
);

INSERT INTO Inventory (itemID, qty)
	VALUES (3, 15);
INSERT INTO Inventory (itemID, qty)
	VALUES (0, 10);
INSERT INTO Inventory (itemID, qty)
	VALUES (2, 5);

CREATE TABLE Party(
  pid integer not null,
  dexID integer not null references Pokemon(dexID),
  gender text,
  nick text,
  level integer not null,
  currentHP integer not null,
  maxHP integer not null,
  pokeball integer references Pokeballs(itemID),
  move1 integer references Moves(mID),
  move1PP integer,
  move2 integer references Moves(mID),
  move2PP integer,
  move3 integer references Moves(mID),
  move3PP integer,
  move4 integer references Moves(mID),
  move4PP integer,
  itemHeld integer references Items(itemID),
  happiness integer not null,
  statuseffect integer references status(sID),
  primary key(pid)
);

INSERT INTO Party (pid, dexID, gender, nick, level, currentHP, maxHP, pokeball, move1, move1PP, move2, move2PP, move3, move3PP, move4, move4PP, itemHeld, happiness, statuseffect)
	VALUES (0, 0448, 'Female', 'Mya', 100, 100, 100, 3, 6, 20, 8, 30, 7, 10, 9, 15, NULL, 200, NULL);
INSERT INTO Party (pid, dexID, gender, nick, level, currentHP, maxHP, pokeball, move1, move1PP, move2, move2PP, move3, move3PP, move4, move4PP, itemHeld, happiness, statuseffect)
	VALUES (1, 0654, 'Female', 'Selkie', 100, 100, 100, 3, 1, 25, 12, 20, 13, 15, NULL, NULL, 7, 200, NULL);

INSERT INTO Party (pid, dexID, gender, nick, level, currentHP, maxHP, pokeball, move1, move1PP, move2, move2PP, move3, move3PP, move4, move4PP, itemHeld, happiness, statuseffect)
	VALUES (2, 0445, 'Male', 'Alan', 100, 100, 100, 4, 0, 25, 15, 20, 22, 15, 23, 10, NULL, 200, NULL);



CREATE TABLE STORAGE(
  bid integer not null,
  dexID integer not null references Pokemon(dexID),
  gender text,
  nick text,
  level integer not null,
  currentHP integer not null,
  maxHP integer not null,
  pokeball integer references Pokeballs(itemID),
  move1 integer references Moves(mID),
  move2 integer references Moves(mID),
  move3 integer references Moves(mID),
  move4 integer references Moves(mID),
  itemHeld integer references Items(itemID),
  happiness integer not null,
  primary key(bid)
);


/********************************
	VIEWS
********************************/
--show all weakness multipliers inline with pokemon! resultset contains weaknesses
	--egg group inclusion was excluding mono-egg group pokemon, code for that is commented out

CREATE OR REPLACE VIEW Pokedex AS
SELECT pokemon.dexid, species, type1, type2, basehp, baseatk, basedef, basespdef, basespd, pctmale, basehappiness, --eggtable.egggroup1, eggtable.egggroup2, 
	SUM(t1.wknsnormal*coalesce(t2.wknsnormal, 1)) as Normal_Dmg, 
	SUM(t1.wknsfire*coalesce(t2.wknsnormal, 1)) as Fire_Dmg, 
	SUM(t1.wknswater*coalesce(t2.wknswater, 1)) as Water_Dmg,
	SUM(t1.wknselectric*coalesce(t2.wknselectric, 1)) as Electric_Dmg,
	SUM(t1.wknsgrass*coalesce(t2.wknsgrass, 1)) as Grass_Dmg,
	SUM(t1.wknsice*coalesce(t2.wknsice, 1)) as Ice_Dmg,
	SUM(t1.wknsfighting*coalesce(t2.wknsfighting, 1)) as Fighting_Dmg,
	SUM(t1.wknspoison*coalesce(t2.wknspoison, 1)) as Poison_Dmg,
	SUM(t1.wknsground*coalesce(t2.wknsground, 1)) as Ground_Dmg,
	SUM(t1.wknsflying*coalesce(t2.wknsflying, 1)) as Flying_Dmg,
	SUM(t1.wknspsychic*coalesce(t2.wknspsychic, 1)) as Psychic_Dmg,
	SUM(t1.wknsbug*coalesce(t2.wknsbug, 1)) as Bug_Dmg,
	SUM(t1.wknsrock*coalesce(t2.wknsrock, 1)) as Rock_Dmg,
	SUM(t1.wknsghost*coalesce(t2.wknsghost, 1)) as Ghost_Dmg,
	SUM(t1.wknsdragon*coalesce(t2.wknsdragon, 1)) as Dragon_Dmg,
	SUM(t1.wknsdark*coalesce(t2.wknsdark, 1)) as Dark_Dmg,
	SUM(t1.wknssteel*coalesce(t2.wknssteel, 1)) as Steel_Dmg,
	SUM(t1.wknsfairy*coalesce(t2.wknsfairy, 1)) as Fairy_Dmg
	FROM pokemon 
/*	JOIN 
		(SELECT a.dexid, e.groupname as EggGroup1, f.groupname as EggGroup2 FROM EggGroupMembers as a 
		 JOIN egggroupmembers as b on a.gID < b.gID and a.dexid = b.dexid 
		Join Egggroups as e on a.gid = e.gid 
		join egggroups as f on b.gid = f.gid 
		order by a.dexid) as eggtable 
	on pokemon.dexid = eggtable.dexid
*/	JOIN Types as t1 on Pokemon.type1 = T1.tid LEFT OUTER JOIN Types as T2 ON Pokemon.type2 = T2.tid
	group by pokemon.dexID--, eggtable.egggroup1, eggtable.egggroup2;
	order by pokemon.dexID;


--evolution trends by name and how
CREATE OR REPLACE VIEW Evolve AS
SELECT pokemon.species, evolutions.levelrequired, evolutions.method, x.species as evolves_to FROM Pokemon 
	join evolutions on pokemon.dexid = evolutions.pid 
	join pokemon as x on evolutions.eid = x.dexid;

/*****************************************
stored procedures
ideas
--capture a pokemon with a pokeball (check inventory for ball, rando determine gender and level, take last 4 moves learned based on level, update inventory) 
	--(perhaps more complex than i imagined)

*****************************************/
--show all potential breeding partner species for a given species based on egg groups
CREATE OR REPLACE FUNCTION potentialMates(pokename TEXT)
RETURNS TABLE(species2 TEXT) AS
$$
DECLARE
	pokename TEXT := $1;
BEGIN
return query 
SELECT DISTINCT z.species 
		FROM pokemon as y
		join EggGroupMembers as a on y.dexid = a.dexid
		JOIN egggroupmembers as b on a.gid = b.gid
		join pokemon as z on b.dexid = z.dexid
		WHERE y.species = pokename;
return;	
END;
$$ LANGUAGE plpgsql;

select potentialmates('Lucario');

--transfer a pokemon to storage

/*CREATE OR REPLACE FUNCTION transfer(partynum integer)
RETURNS void AS
$$
DECLARE
	partynum integer :=$1;
BEGIN
	INSERT INTO Storage (bid, dexID, gender, nick, level, maxHP, pokeball, move1, move2, move3, move4, itemHeld, happiness)
	SELECT (pid, dexID, gender, nick, level, maxHP, pokeball, move1, move2, move3, move4, itemHeld, happiness)
	FROM Party
	WHERE pid = partynum;

	DELETE FROM Party
	WHERE pid = partynum;

COMMIT;	
END;
$$ LANGUAGE plpgsql;
*/

--select transfer(1);

--refuses to function, claims "ERROR:  INSERT has more target columns than expressions", then immediately "The insertion source is a row expression containing the same number of columns expected by the INSERT." That's confusing as hell.

/*** triggers**********
***********************/
--automatically send a pokemon to storage if it is the 7th party member
/*
CREATE OR REPLACE FUNCTION oversizedParty() RETURNS TRIGGER AS
$$
BEGIN
	IF SELECT COUNT(*) FROM Party >= 7
	THEN
		
		
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

*/
--without transfer function, this wont work. 

--automatically evolve the pokemon if it achieves levelup requirements and is not holding an everstone


/****************************
	reports
****************************/
select pokemon.species, moveset.levelgained, moves.movename from pokemon join moveset on pokemon.dexid = moveset.dexid join moves on moveset.mid = moves.mid;
--shows all moves learned by each pokemon
select pokemon.species, egggroups.groupname from pokemon join egggroupmembers on pokemon.dexid = egggroupmembers.dexid join egggroups on egggroupmembers.gid = egggroups.gid;
--shows all pokemon and their egg groups they are part of by name

--roles
create role admin;
grant all on all tables in schema public to admin;

CREATE ROLE player;
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM player;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO player;
GRANT INSERT ON Inventory, Party, Storage TO player;
GRANT UPDATE ON Inventory, Party, Storage TO player;

--verify results--
SELECT * FROM Pokemon ORDER BY dexID;
SELECT * FROM Evolutions ORDER BY pID;
SELECT * FROM EggGroupMembers ORDER BY dexID;
SELECT * FROM Moves ORDER BY mID;
SELECT * FROM Moveset ORDER BY dexID;
SELECT * FROM PARTY ORDER BY pid;
select * from pokedex;
--if you wish to see rock's greatest hits, add:
--	where rock_dmg = 4;
select * from evolve;