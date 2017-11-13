CREATE TABLE `testdatabase`.`user` (
  `USER_ID` INT NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` VARCHAR(45) NULL,
  `LAST_NAME` VARCHAR(45) NULL,
  `PASSWORD` VARCHAR(45) NULL,
  `EMAIL` VARCHAR(45) NULL,
  `ACTIVE` INT NULL,
  PRIMARY KEY (`USER_ID`));
  
SELECT * FROM testdatabase.user;

INSERT INTO testdatabase.user VALUES(1, 'kamal', 'reddy', 'admin', 'kamal@gmail.com', 1);
INSERT INTO testdatabase.user VALUES(2, 'arun', 'kumar', 'user', 'arun@gmail.com', 1);

  
CREATE TABLE `testdatabase`.`role` (
  `ROLE_ID` INT NOT NULL AUTO_INCREMENT,
  `ROLE` VARCHAR(45) NULL,
  PRIMARY KEY (`ROLE_ID`));
  
SELECT * FROM testdatabase.role;

INSERT INTO testdatabase.role VALUES(1, "ADMIN");
INSERT INTO testdatabase.role VALUES(2, "USER");

CREATE TABLE `testdatabase`.`user_role` (
  `USER_ID` INT NOT NULL,
  `ROLE_ID` INT NOT NULL,
  PRIMARY KEY (`USER_ID`, `ROLE_ID`),
  UNIQUE INDEX `ROLE_ID_UNIQUE` (`ROLE_ID` ASC),
  CONSTRAINT `USER_ID`
    FOREIGN KEY (`USER_ID`)
    REFERENCES `testdatabase`.`user` (`USER_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `ROLE_ID`
    FOREIGN KEY (`ROLE_ID`)
    REFERENCES `testdatabase`.`role` (`ROLE_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
	
SELECT * FROM testdatabase.user_role;

INSERT INTO testdatabase.user_role VALUES(1, 1);
INSERT INTO testdatabase.user_role VALUES(2, 2);
