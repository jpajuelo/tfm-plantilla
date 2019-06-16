#!/bin/bash

JAR="target/loadtest-0.0.1-SNAPSHOT-jar-with-dependencies.jar"

mvn clean package

for rooms in $(seq 1 1 10) $(seq 20 10 100) $(seq 200 100 500)
do
	for room_users in $(seq 2 2 20)
	do
		for msg_freq in $(seq 0.2 0.2 2)
		do
			java -Xmx8g -jar $JAR $rooms $room_users $msg_freq ${1:-localhost} &
		done
	done
done
