#! /bin/sh

# before running this script please add data into the 
# database by running  the script fixtures.py , it will
# create the todos table and add 50000 rows into it for
# test for you

#delete index if it exist
curl -XDELETE 'localhost:9200/_river/my_jdbc_river/'


echo  "creating index ..."

# creating a jdbc river for postgres
curl -XPUT 'localhost:9200/_river/my_jdbc_river/_meta' -d '{
"type" : "jdbc",
"jdbc" : {
"driver" : "org.postgresql.Driver",
"url" : "jdbc:postgresql://localhost:5432/mypgdb?loglevel=0",
"user" : "postgres",
"password" : "test",
"sql" : "select * from \"ToDos\""
}
}'

# and if your index are succefully installed you should get 
# {"ok":true,
# "_index":"_river",
# "_type":"my_jdbc_river",
# "_id":"_meta",
# "_version":1}


