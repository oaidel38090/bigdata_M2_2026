#!/bin/bash

export JAVA_HOME=$(readlink -f $(update-alternatives --list java) | sed 's:/bin/java::')
export PATH=$JAVA_HOME/bin:$PATH
export HADOOP_ROOT_LOGGER=ERROR,console

exec /home/vagrant/.local/bin/jupyter-lab --config=/home/vagrant/.jupyter/jupyter_server_config.py
