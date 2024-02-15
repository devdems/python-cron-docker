#!/bin/bash
while true; do
    python /app/izracun_omreznine.py > /proc/1/fd/1 2>/proc/1/fd/2
    sleep 10
done
