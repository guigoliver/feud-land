CREATE TABLE Feud (
    id INT PRIMARY KEY AUTOINCREMENT,
);

CREATE TABLE Lord (
    id INT PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    house VARCHAR(255) NOT NULL,
);

CREATE TABLE Land_Parcel (
    id INT PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    total_productivity INT,
    lord_id INT NOT NULL,
    FOREIGN KEY (lord_id) REFERENCES Lord(id),
);

CREATE TABLE Acre (
    id INT PRIMARY KEY AUTOINCREMENT,
    position_x INT NOT NULL,
    position_y INT NOT NULL,
    productivity INT,
    productivity_level ENUM('low', 'medium', 'high') NOT NULL,
    land_parcel_id INT NOT NULL,
    FOREIGN KEY (land_parcel_id) REFERENCES Land_Parcel(id),
);
