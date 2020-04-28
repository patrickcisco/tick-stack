docker-compose down
rm -r kapacitor/data
rm -r influxdb/data
rm -r chronograf/data
docker-compose up -d