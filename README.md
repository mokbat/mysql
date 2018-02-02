## MySQL ##
Simple explanation of how mysql database works


### Learn to install mysql ###
```
yum install mysql-server
```

### Login to mysql ###
```
mysql -u root -p
```

### Create a db ###
```
CREATE DATABASE test;
```

### Use this db ###
```
USE test;
```


### Create a table ###
```mysql

CREATE TABLE IF NOT EXISTS mytest (
    test_id int(5) NOT NULL AUTO_INCREMENT,
    first_name varchar(50) DEFAULT NULL,
    last_name varchar(50) DEFAULT NULL,
    roll_no varchar(5) NOT NULL,
    PRIMARY KEY(test_id)
    );
```


### Insert Values in a table ###
```
INSERT INTO mytest (test_id, first_name, last_name, roll_no) VALUES ('1', 'joanne', 'allenntownne', 'A');
INSERT INTO mytest (test_id, first_name, last_name, roll_no) VALUES ('2', 'illeana', 'dcruz', 'B');
INSERT INTO mytest (test_id, first_name, last_name, roll_no) VALUES ('3', 'sara', 'winston', 'C');
INSERT INTO mytest (test_id, first_name, last_name, roll_no) VALUES ('4', 'sara', 'winston', 'C');
INSERT INTO mytest (test_id, first_name, last_name, roll_no) VALUES ('5', 'sara', 'winston', 'CE');
```

### Create a table ###
```mysql
CREATE TABLE IF NOT EXISTS ssn (
    ssn_no varchar(9) DEFAULT NULL,
    roll_no varchar(5) NOT NULL,
    PRIMARY KEY(roll_no)
    );
```

### Insert Values in a table ###
```mysql
INSERT INTO ssn (ssn_no, roll_no) VALUES ('AAA', 'A');
INSERT INTO ssn (ssn_no, roll_no) VALUES ('BBB', 'B');
INSERT INTO ssn (ssn_no, roll_no) VALUES ('CCC', 'C');
INSERT INTO ssn (ssn_no, roll_no) VALUES ('DDD', 'D');
```

### Display ###
```mysql
mysql> SELECT * FROM mytest;
+---------+------------+--------------+---------+
| test_id | first_name | last_name    | roll_no |
+---------+------------+--------------+---------+
|       1 | joanne     | allenntownne | A       |
|       2 | williaam   | jonathan     | B       |
|       3 | sara       | winston      | C       |
|       4 | sara       | winston      | C       |
|       5 | sara       | winston      | CE      |
+---------+------------+--------------+---------+
```

```mysql
mysql> SELECT * FROM ssn;
+--------+---------+
| ssn_no | roll_no |
+--------+---------+
| AAA    | A       |
| BBB    | B       |
| CCC    | C       |
| DDD    | D       |
+--------+---------+
```


### Order By (default is ASC) ###
```mysql
mysql> SELECT * FROM mytest ORDER BY roll_no;
+---------+------------+--------------+---------+
| test_id | first_name | last_name    | roll_no |
+---------+------------+--------------+---------+
|       1 | joanne     | allenntownne | A       |
|       2 | williaam   | jonathan     | B       |
|       3 | sara       | winston      | C       |
|       4 | sara       | winston      | C       |
|       5 | sara       | winston      | CE      |
+---------+------------+--------------+---------+
```


### Group By ###
```mysql
mysql> SELECT * FROM mytest GROUP BY roll_no;
+---------+------------+--------------+---------+
| test_id | first_name | last_name    | roll_no |
+---------+------------+--------------+---------+
|       1 | joanne     | allenntownne | A       |
|       2 | williaam   | jonathan     | B       |
|       3 | sara       | winston      | C       |
|       5 | sara       | winston      | CE      |
+---------+------------+--------------+---------+
```


### Update ###
```mysql
mysql> UPDATE mytest SET first_name='williaam', last_name='jonathan' WHERE roll_no='B';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0
```

### Joins ###
```mysql
mysql> SELECT * FROM mytest INNER JOIN ssn ON mytest.roll_no = ssn.roll_no;
+---------+------------+--------------+---------+--------+---------+
| test_id | first_name | last_name    | roll_no | ssn_no | roll_no |
+---------+------------+--------------+---------+--------+---------+
|       1 | joanne     | allenntownne | A       | AAA    | A       |
|       2 | williaam   | johnathan    | B       | BBB    | B       |
|       3 | sara       | winston      | C       | CCC    | C       |
|       4 | sara       | winston      | C       | CCC    | C       |
+---------+------------+--------------+---------+--------+---------+
```

```mysql
mysql> SELECT * FROM mytest LEFT JOIN ssn ON mytest.roll_no = ssn.roll_no;
+---------+------------+--------------+---------+--------+---------+
| test_id | first_name | last_name    | roll_no | ssn_no | roll_no |
+---------+------------+--------------+---------+--------+---------+
|       1 | joanne     | allenntownne | A       | AAA    | A       |
|       2 | williaam   | johnathan    | B       | BBB    | B       |
|       3 | sara       | winston      | C       | CCC    | C       |
|       4 | sara       | winston      | C       | CCC    | C       |
|       5 | sara       | winston      | CE      | NULL   | NULL    |
+---------+------------+--------------+---------+--------+---------+
```

```mysql
mysql> SELECT * FROM mytest RIGHT JOIN ssn ON mytest.roll_no = ssn.roll_no;
+---------+------------+--------------+---------+--------+---------+
| test_id | first_name | last_name    | roll_no | ssn_no | roll_no |
+---------+------------+--------------+---------+--------+---------+
|       1 | joanne     | allenntownne | A       | AAA    | A       |
|       2 | williaam   | johnathan    | B       | BBB    | B       |
|       3 | sara       | winston      | C       | CCC    | C       |
|       4 | sara       | winston      | C       | CCC    | C       |
|    NULL | NULL       | NULL         | NULL    | DDD    | D       |
+---------+------------+--------------+---------+--------+---------+
```
