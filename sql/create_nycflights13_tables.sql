-- remember to run this file on the right database
-- generate table for airlines.csv
DROP TABLE IF EXISTS airlines CASCADE;
CREATE TABLE airlines (
    carrier VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255)
);
COPY airlines
FROM 'C:\Users\HexMa\OneDrive\School\Y1TRI3\AAI1001\Data\nycflights13\airlines.csv'
CSV HEADER;

-- generate table for airports.csv
DROP TABLE IF EXISTS airports CASCADE;
CREATE TABLE airports (
    faa VARCHAR(3) PRIMARY KEY,
    name VARCHAR(255),
	lat FLOAT,
	lon FLOAT,
	alt INT,
	tz INT,
	-- Daylight savings time
	dst VARCHAR(1),
	tzone VARCHAR(255)
);
COPY airports
FROM 'C:\Users\HexMa\OneDrive\School\Y1TRI3\AAI1001\Data\nycflights13\airports.csv'
CSV HEADER;

-- generate table for flights.csv
DROP TABLE IF EXISTS flights CASCADE;
CREATE TABLE flights (
	year INT,
    month INT,
    day INT,
	dep_time INT,
	sched_dep_tim INT,
	dep_delay INT,
	arr_time INT,
	sched_arr_time INT,
	arr_delay INT,
	carrier VARCHAR(2),
	flight INT,
	tailnum VARCHAR(6),
	origin VARCHAR(3),
	dest VARCHAR(3),
	air_time INT,
	distance INT,
	hour INT,
	minute INT,
	time_hour TIMESTAMPTZ
);
COPY flights
FROM 'C:\Users\HexMa\OneDrive\School\Y1TRI3\AAI1001\Data\nycflights13\flights.csv'
CSV HEADER;

-- generate table for planes.csv
DROP TABLE IF EXISTS planes CASCADE;
CREATE TABLE planes (
    tailnum VARCHAR(6) PRIMARY KEY,
    year INT,
	type VARCHAR(255),
	manufacturer VARCHAR(255),
	model VARCHAR(255),
	engines INT,
	seats INT,
	speed INT,
	engine VARCHAR(255)
);
COPY planes
FROM 'C:\Users\HexMa\OneDrive\School\Y1TRI3\AAI1001\Data\nycflights13\planes.csv'
CSV HEADER;

-- generate table for weather.csv
DROP TABLE IF EXISTS weather CASCADE;
CREATE TABLE weather (
    origin VARCHAR(3),
    year INT,
	month INT,
	day INT,
	hour INT,
	temp FLOAT,
	dewp FLOAT,
	humid FLOAT,
	wind_dir INT,
	wind_speed FLOAT,
	wind_gust FLOAT,
	precip FLOAT,
	pressure FLOAT,
	visib FLOAT,
	time_hour TIMESTAMPTZ
);
COPY weather
FROM 'C:\Users\HexMa\OneDrive\School\Y1TRI3\AAI1001\Data\nycflights13\weather.csv'
CSV HEADER;