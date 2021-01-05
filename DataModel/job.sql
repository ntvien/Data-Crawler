DROP DATABASE IF EXISTS JOB;
CREATE DATABASE JOB;
USE JOB;

DROP TABLE IF EXISTS EID;
CREATE TABLE EID(
    EID VARCHAR(10),
    PRIMARY KEY (EID)
);

DROP TABLE IF EXISTS Individual;
CREATE TABLE Individual(
    IEID VARCHAR(10),
    INAME VARCHAR(30),
    ILOCATION VARCHAR(30),
    PRIMARY KEY(IEID),
    FOREIGN KEY (IEID) REFERENCES EID(EID)
);

DROP TABLE IF EXISTS Organization;
CREATE TABLE Organization(
    OEID VARCHAR(10),
    ONAME VARCHAR(30),
    OLOCATION VARCHAR(30),
    PRIMARY KEY (OEID),
    FOREIGN KEY (OEID) REFERENCES EID(EID)
);

DROP TABLE IF EXISTS Employment_Information;
CREATE TABLE Employment_Information(
    ID VARCHAR(10),
    EID VARCHAR(10),
    NAME VARCHAR(30),
    SALARY VARCHAR(30),
    LOCATION VARCHAR(30),
    POSITION VARCHAR(30),
    DESCRIPTION VARCHAR(100),
    REQUIREMENT VARCHAR(100),
    BENEFIT VARCHAR(100),
    QUANTITY INT,
    PRIMARY KEY(ID),
    FOREIGN KEY (EID) REFERENCES EID(EID)
);



