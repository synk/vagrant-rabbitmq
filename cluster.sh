#!/usr/bin/env bash

echo "Cluster Setup"
rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl cluster rabbit@rbmq1 rabbit@rbmq2
rabbitmqctl start_app
rabbitmqctl cluster_status
echo "Fin"
