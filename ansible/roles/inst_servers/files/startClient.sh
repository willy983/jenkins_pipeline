#!/usr/bin/env bash

export JAVA_HOME=/opt/pprb/support/jdk1.8.0_221/ 
export IGNITE_HOME=/opt/pprb/client/apache-ignite-2.8.0-SNAPSHOT-bin/

nohup sh $IGNITE_HOME/bin/ignite.sh $IGNITE_HOME/config/default-config-client.xml > /dev/null 2>&1 & 

