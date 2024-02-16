FROM python:3.7-alpine

# Install cron and vim
RUN apk add --no-cache cron vim

# Set working directory
WORKDIR /app

# Install Python dependencies
RUN pip3 install holidays mysql mysql-connector mysql-connector-python pymodbus solaredge_modbus telegram python-telegram-bot requests

# Start the script as the main process of the container
CMD ["/app/run_script.sh"]
