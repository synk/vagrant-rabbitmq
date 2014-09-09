#!/usr/bin/env bash

echo "192.168.33.10  rbmq1" >> /etc/hosts
echo "192.168.33.11  rbmq2" >> /etc/hosts

echo "Installing RabbitMQ server"
#apt-get update >/dev/null 2>&1
apt-get install -y rabbitmq-server >/dev/null 2>&1
echo "Stop rabbitmq"
rabbitmqctl stop
echo "Set cookie"
cp /vagrant/.erlang.cookie /var/lib/rabbitmq/.erlang.cookie
echo "Restart rabbitmq"
/etc/init.d/rabbitmq-server start
echo "Fin"
