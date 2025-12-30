-- Spatial index on landmark points
CREATE SPATIAL INDEX IDX_Landmarks_Location
ON Landmarks(LandmarkLocation);

-- Spatial index on road paths
CREATE SPATIAL INDEX IDX_Roads_Path
ON Roads(RoadPath);

-- Spatial index on zone boundaries
CREATE SPATIAL INDEX IDX_Zones_Boundary
ON Zones(ZoneBoundary);
