#!/bin/bash

until $(nc -vz gocd-server01 8154)
do
	echo "Unable to connec to GoCD Server Port ... Retrying"
	sleep 4
done

exec /opt/go-agent-16.12.0/agent.sh
