FROM python:3.7-alpine

RUN apk update && apk add --no-cache \
  bash \
  && rm -fr /tmp/*

RUN pip install holidays mysql-connector-python pymodbus solaredge_modbus telegram 

WORKDIR /app

# Run the daemon
CMD python script.py
