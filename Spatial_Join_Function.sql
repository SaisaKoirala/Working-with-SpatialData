/*Spatial Relationship functions: STContains,STIntersects,STWithin,
STEquals,STDisjoint,STOverlaps,STTouches,STCrosses*/

-- Query : INTERSECTS
-- Finds roads that cross or touch zones
SELECT r.RoadName, z.ZoneName
FROM Roads r
JOIN Zones z
ON z.ZoneBoundary.STIntersects(r.RoadPath) = 1;

-- Query : WITHIN
-- Checks if landmarks lie within zones
SELECT l.LandmarkName, z.ZoneName
FROM Landmarks l
JOIN Zones z
ON l.LandmarkLocation.STWithin(z.ZoneBoundary) = 1;

-- Query : CONTAINS
-- Finds landmarks completely inside zones
SELECT l.LandmarkName, z.ZoneName
FROM Landmarks l
JOIN Zones z
ON z.ZoneBoundary.STContains(l.LandmarkLocation) = 1;

/* Measurement or Calculation Functions : STDistance,STLength,STArea,
STCentroid,STEnvelope */

-- Finds distance from each landmark to the first point of the zone polygon
SELECT 
    l.LandmarkName,
    z.ZoneName,
    l.LandmarkLocation.STDistance(z.ZoneBoundary.STPointN(1)) AS DistanceInMeters
FROM Landmarks l
CROSS JOIN Zones z
ORDER BY l.LandmarkLocation.STDistance(z.ZoneBoundary.STPointN(1)) ASC;


--Distance Query: “Proximity-based querying”
--Find landmarks within 500 meters of a road
SELECT DISTINCT l.LandmarkName
FROM Landmarks l
JOIN Roads r
ON l.LandmarkLocation.STDistance(r.RoadPath) <= 500;
