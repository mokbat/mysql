####################
# Create Statement #
####################

# The below statement creates two tables mytest and ssn

CREATE TABLE IF NOT EXISTS mytest (
    test_id int(5) NOT NULL AUTO_INCREMENT,
    first_name varchar(50) DEFAULT NULL,
    last_name varchar(50) DEFAULT NULL,
    roll_no varchar(5) NOT NULL,
    PRIMARY KEY(test_id)
    );
    
 CREATE TABLE IF NOT EXISTS ssn (
    ssn_no varchar(9) DEFAULT NULL,
    roll_no varchar(5) NOT NULL,
    PRIMARY KEY(roll_no)
    );

