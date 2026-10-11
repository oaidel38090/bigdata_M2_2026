#!/bin/bash
set -e

if [ ! -d /hadoop/dfs/name/current ]; then
  echo "Formatting NameNode..."
  /opt/hadoop/bin/hdfs namenode -format -force -nonInteractive
fi

echo "Starting NameNode..."
/opt/hadoop/bin/hdfs --daemon start namenode

sleep 5

echo "Processes:"
jps || true

echo "Log directory:"
ls -l "$HADOOP_LOG_DIR" || true

tail -F "$HADOOP_LOG_DIR"/* 2>/dev/null || tail -f /dev/null