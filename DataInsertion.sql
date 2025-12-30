-- Insert landmark points
INSERT INTO Landmarks VALUES
('City Hospital', geography::Point(27.7172, 85.3240, 4326)),
('Central School', geography::Point(27.7120, 85.3200, 4326)),
('Bus Station', geography::Point(27.7050, 85.3300, 4326));

-- Insert road lines
INSERT INTO Roads VALUES
('Ring Road',geography::STLineFromText('LINESTRING(85.30 27.72, 85.35 27.70)', 4326)),
('River Road',geography::STLineFromText('LINESTRING(85.32 27.73, 85.34 27.69)', 4326)),
('Airport Highway',geography::STLineFromText('LINESTRING(85.28 27.71, 85.36 27.71)', 4326));

-- Insert zone polygons
INSERT INTO Zones VALUES
('Kathmandu City',geography::STPolyFromText('POLYGON((85.30 27.73, 85.36 27.73, 85.36 27.69, 85.30 27.69, 85.30 27.73))', 4326)),
('Central Park',geography::STPolyFromText('POLYGON((85.32 27.72, 85.34 27.72, 85.34 27.70, 85.32 27.70, 85.32 27.72))', 4326)),
('Industrial Area',geography::STPolyFromText('POLYGON((85.28 27.71, 85.30 27.71, 85.30 27.69, 85.28 27.69, 85.28 27.71))', 4326));

--geography::Point(Latitude, Longitude, SRID)
--Latitude → north-south position (decimal degrees)
--Longitude → east-west position (decimal degrees)
--SRID → Spatial Reference ID (coordinate system)
