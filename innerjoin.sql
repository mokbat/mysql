#########################
# Inner Join  Statement #
#########################

# The below statement does an inner join between tables, mytest and ssn on roll_no

SELECT * FROM mytest INNER JOIN ssn ON mytest.roll_no = ssn.roll_no;
