CREATE DATABASE RaceManager

USE RaceManager

CREATE TABLE Vehicles(
	Id INT IDENTITY PRIMARY KEY,
	Make NVARCHAR(50),
	Model NVARCHAR(50),
	TopSpeed INT,
	HorsePower INT,
	[Weight] DECIMAL(6,2)
)

CREATE TABLE Racers(
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(50),
	Gender NVARCHAR(6),
	Age INT,
	[Weight] DECIMAL(5,2),
	VehicleId INT,

	FOREIGN KEY(VehicleId)
	REFERENCES Vehicles(Id),
)

CREATE TABLE Teams(
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(50),
	Staff INT,
	RacerId INT,

	FOREIGN KEY(RacerId)
	REFERENCES Racers(Id)
)

INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Dodge', 'Ram 3500', 409, 1054, 1580.06);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Chevrolet', 'Tahoe', 327, 1111, 2033.21);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Bentley', 'Arnage', 449, 684, 1654.14);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Mercedes-Benz', 'C-Class', 305, 608, 2953.63);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Suzuki', 'XL-7', 474, 958, 1677.42);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Lexus', 'ES', 295, 987, 2031.2);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Dodge', 'Dakota', 351, 1078, 2146.95);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Volvo', 'C70', 322, 1105, 2709.64);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Chrysler', 'Pacifica', 383, 804, 2771.18);
INSERT INTO Vehicles (Make, Model, TopSpeed, HorsePower, Weight) VALUES ('Hyundai', 'Tiburon', 431, 970, 1960.91);


INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Theobald Kalinowsky', 'Male', 31, 56.93, 6);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Rozella Heenan', 'Female', 35, 50.36, 8);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Inna Maciejak', 'Female', 38, 56.15, 8);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Euphemia Glasspool', 'Female', 36, 92.13, 2);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Hunt Cropper', 'Male', 39, 93.2, 4);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Darwin Locock', 'Male', 35, 99.36, 2);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Marty Hanson', 'Female', 27, 65.91, 8);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Andris Chiddy', 'Male', 40, 53.22, 1);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Chandler Harold', 'Male', 28, 78.25, 1);
INSERT INTO Racers ([Name], Gender, Age, [Weight], VehicleId) VALUES ('Gabey McCorry', 'Female', 29, 58.11, 5);


INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('Antlers Municipal', 17, 1);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('Am Timan', 15, 2);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('Santiago Perez', 29, 3);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('Guillermo León Valencia', 11, 4);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('Udorn Air Base', 23, 5);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('Helena Regional', 25, 6);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('Bayankhongor', 20, 7);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('El Tor', 30, 8);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('Nanyuki', 7, 9);
INSERT INTO Teams ([Name], Staff, RacerId) VALUES ('San Cristobal de las Casas', 23, 10);