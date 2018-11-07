#!/bin/bash

./tv.sh | mosquitto_pub -h $MQTT -t tv/state -l
