#########################
# Outer Join  Statement #
#########################

# The below statement does an outer (left) join between tables, mytest and ssn on roll_no

SELECT * FROM mytest LEFT JOIN ssn ON mytest.roll_no = ssn.roll_no;

# The below statement does an outer (right) join between tables, mytest and ssn on roll_no

SELECT * FROM mytest RIGHT JOIN ssn ON mytest.roll_no = ssn.roll_no;
