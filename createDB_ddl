-- Create a spatial database
CREATE DATABASE SpatialDB;

-- Use the database
USE SpatialDB;

-- Stores point locations (Hospital, School, Bus Station)
CREATE TABLE Landmarks (
    LandmarkID INT IDENTITY PRIMARY KEY,
    LandmarkName VARCHAR(100),
    LandmarkLocation GEOGRAPHY
);

-- Stores linear features (Roads, Rivers)
CREATE TABLE Roads (
    RoadID INT IDENTITY PRIMARY KEY,
    RoadName VARCHAR(100),
    RoadPath GEOGRAPHY
);

-- Stores area boundaries (City, Park)
CREATE TABLE Zones (
    ZoneID INT IDENTITY PRIMARY KEY,
    ZoneName VARCHAR(100),
    ZoneBoundary GEOGRAPHY
);

--GEOGRAPHY let you store spatial object
