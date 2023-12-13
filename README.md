The ETL was created via a shell script. The following was done:

1. Create template1 database in PostgreSQL 

2. Create the 'access_log' table in the db

3. Quit postgres by using '\q' and ctrl+D

4. Unzip the ‘web-server-access-log.txt.gz’ using the
gunzip -f web-server-access-log.txt.gz command.

5. Create a script that will contain the ETL process(cp-access-log.sh). 

Note:
- Use bash cp-access-log.sh to run the shell script.
- Ensure you save the shell script after every change done.

