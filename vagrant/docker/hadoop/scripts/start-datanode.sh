#!/bin/bash
set -e


until getent hosts namenode; do
  echo "Waiting for namenode DNS..."
  sleep 2
done

echo "Starting DataNode..."
/opt/hadoop/bin/hdfs --daemon start datanode

sleep 5

echo "Processes:"
jps || true

echo "Log directory:"
ls -l "$HADOOP_LOG_DIR" || true

tail -F "$HADOOP_LOG_DIR"/* 2>/dev/null || tail -f /dev/null