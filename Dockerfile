FROM python:3.7

# Install cron and vim
RUN apt-get update && apt-get -y install cron vim

# Set working directory
WORKDIR /app

# Install Python dependencies
RUN pip3 install holidays mysql mysql-connector mysql-connector-python pymodbus solaredge_modbus telegram python-telegram-bot

# Start cron service as the main process of the container
CMD cron && tail -f /var/log/cron.log
