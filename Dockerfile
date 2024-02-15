FROM python:3.7
RUN apt-get update && apt-get -y install cron vim
WORKDIR /app
RUN pip3 install holidays mysql mysql-connector mysql-connector-python pymodbus solaredge_modbus telegram python-telegram-bot
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab
RUN echo $PYTHONPATH
# run crond as main process of container
CMD ["cron", "-f"]
