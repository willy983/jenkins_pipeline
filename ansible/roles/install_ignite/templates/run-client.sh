#!/usr/bin/env bash

export JAVA_HOME="{{ java_home }}"
export IGNITE_HOME="{{ ignite_home }}"

JVM_OPTS="$JVM_OPTS -Dnode.id=`hostname`"

ps aux | grep config-client.xml | awk '{print $2}' | xargs kill -9

sleep 10

nohup sh $IGNITE_HOME/bin/ignite.sh "{{ config_client }}" > /dev/null 2>&1 &

