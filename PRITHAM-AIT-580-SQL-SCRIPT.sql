create database jobs;

use jobs;

CREATE TABLE JobData (
    JobID INT,
    Agency VARCHAR(255),
    PostingType VARCHAR(255),
    NumberOfPositions INT,
    CivilServiceTitle VARCHAR(255),
    TitleClassification VARCHAR(255),
    TitleCodeNo INT,
    Level INT,
    JobCategory VARCHAR(255),
    FullTimePartTimeIndicator VARCHAR(1),
    CareerLevel VARCHAR(255),
    SalaryRangeFrom DECIMAL(10, 2),
    SalaryRangeTo DECIMAL(10, 2),
    SalaryFrequency VARCHAR(255),
    WorkLocation VARCHAR(255),
    DivisionWorkUnit VARCHAR(255),
    PreferredSkills TEXT,
    HoursShift VARCHAR(255),
    ResidencyRequirement VARCHAR(255),
    PostingDate DATE,
    PostingUpdated DATE,
    StreetAddress VARCHAR(255)
);

select * from dataset;

SELECT * FROM dataset WHERE Agency = 'NYC HOUSING AUTHORITY';

SELECT Agency, COUNT(*) AS NumberOfPositions FROM dataset GROUP BY Agency;

SELECT * FROM dataset WHERE `level` = 1;