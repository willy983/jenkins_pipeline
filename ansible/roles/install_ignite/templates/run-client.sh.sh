#!/usr/bin/env bash

export JAVA_HOME="{{ java_home }}"
export IGNITE_HOME="{{ ignite_home }}"

JVM_OPTS="$JVM_OPTS -Dnode.id=`hostname`"

nohup sh $IGNITE_HOME/bin/ignite.sh "{{ config_client }}" > /dev/null 2>&1 &

