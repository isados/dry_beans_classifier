#!/bin/bash
export AIRFLOW_HOME=`pwd`/airflow
export PYTHONPATH=`pwd`:$PYTHONPATH
airflow standalone