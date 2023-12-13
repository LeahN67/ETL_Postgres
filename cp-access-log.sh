# Extract phase

echo "Extracting data"

# Extract the columns 1 (timestamp), 2 (latitude), 3 (longitude) and 
# 4 (visitorid)
# Extract timestamp, latitude, longitude, and visitorid from access log
cut -d"#" -f1-4 web-server-access-log.txt

cut -d"#" -f1-4 web-server-access-log.txt > extracted-data.txt

cat extracted-data.txt

# Transform phase
echo "Transforming data"

# read the extracted data and replace the colons with commas.
tr "#" "," < extracted-data.txt

tr "#" "," < extracted-data.txt > transformed-data.csv

cat transformed-data.csv


# Load phase
echo "Loading data"

# Send the instructions to connect to 'template1' and
# copy the file to the table 'access_log' through command pipeline.

echo "\c template1;\COPY access_log  FROM '/home/leah/Documents/MLOps/data_engineering/Shell_ETL/ETL_Postgres/transformed-data.csv' DELIMITERS ',' CSV HEADER;" | psql --username=postgres --host=localhost
