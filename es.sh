# Install Elasticsearch on Docker
docker network create elastic
docker pull docker.elastic.co/elasticsearch/elasticsearch:8.11.2
docker run --name es01 --net elastic -p 9200:9200 -it -m 1GB docker.elastic.co/elasticsearch/elasticsearch:8.11.2
# copy the generated password es
docker exec -it es01 /usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic
# copy the generated password kibana
docker exec -it es01 /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana