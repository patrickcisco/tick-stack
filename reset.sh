docker-compose down
rm -r kapacitor/data
rm -r influxdb/data
rm -r chronograf/data
rm -r images/telegraf/bin
mkdir -p images/telegraf/bin
cp $GOPATH/src/github.com/influxdata/telegraf/telegraf images/telegraf/bin/telegraf
docker-compose build telegraf
docker-compose up -d