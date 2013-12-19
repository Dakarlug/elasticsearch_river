# some basic reseach 
# echo  "basic search from elasticsearch"
curl -XPOST "http://localhost:9200/_search?pretty=true" -d '{
   "query": {
     "match_phrase" :{
        "do": {
		"query": "Allaiter bebe 80000014",
		"max_expansions": "1"
        }
     }
  }
}
'

curl "http://localhost:9200/_search?q=do:80000014&pretty=true"

