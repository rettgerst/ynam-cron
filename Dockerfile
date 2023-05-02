FROM snowskeleton/ynam

RUN sudo apt-get update && sudo apt-get install -y cron

ADD entry.sh ./entry.sh

RUN sudo chmod +x ./entry.sh

ADD crontab.txt /etc/cron.d/crontab.txt

RUN sudo chmod 0644 /etc/cron.d/crontab.txt

RUN crontab /etc/cron.d/crontab.txt

ENTRYPOINT ./entry.sh