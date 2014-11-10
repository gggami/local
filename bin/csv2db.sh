#!/bin/bash
set -e

DB_NAME=$1
FILENAME=$2
FBASE=`echo ${FILENAME} | cut -d\. -f1`
[ -n "$FBASE" ] || exit 1

COLUMNS=`head -1 ${FILENAME}`

echo "drop table ${FBASE}"
mysql -uroot ${DB_NAME} -e "drop table if exists ${FBASE}"

echo "create table ${FBASE}"
mysql -uroot ${DB_NAME} -e "create table ${FBASE} ( id int unsigned not null auto_increment, primary key(id) );"

echo "add column..."
for f in `echo ${COLUMNS} | sed -e 's/,/ /g'`
do
    mysql -uroot ${DB_NAME} -e "alter table ${FBASE} add column ${f} varchar(150);"
done

echo "insert records..."
mysql -uroot ${DB_NAME}  -e "LOAD DATA LOCAL INFILE '${FILENAME}' INTO TABLE ${FBASE} FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (${COLUMNS})"

