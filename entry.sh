echo "first run on container start"
sudo sh /ynam.sh

echo "starting ynam cron task:"
cat /etc/cron.d/crontab.txt

sudo cron -f