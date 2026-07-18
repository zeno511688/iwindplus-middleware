#!/bin/bash
if [ ! -d /usr/local/mysql  ];then
  mkdir -p /usr/local/mysql/data /usr/local/mysql/log
  cchmod 777 /usr/local/mysql/log
else
  echo "mysql相应目录已经存在"
fi
if [ ! -d /usr/local/redis  ];then
  mkdir -p /usr/local/redis/data /usr/local/redis/log
  chmod 777 /usr/local/redis/log
else
  echo "redis相应目录已经存在"
fi
if [ ! -d /usr/local/rabbitmq  ];then
  mkdir -p /usr/local/rabbitmq/data /usr/local/rabbitmq/log
  chmod 777 /usr/local/rabbitmq/log
else
  echo "rabbitmq相应目录已经存在"
fi
if [ ! -d /usr/local/mongo  ];then
  mkdir -p /usr/local/mongo/data /usr/local/mongo/log
  chmod 777 /usr/local/mongo/log
else
  echo "mongo相应目录已经存在"
fi
if [ ! -d /usr/local/nacos  ];then
  mkdir -p /usr/local/nacos/data /usr/local/nacos/log
  chmod 777 /usr/local/nacos/log
else
  echo "nacos相应目录已经存在"
fi
if [ ! -d /usr/local/seata/log  ];then
  mkdir -p /usr/local/seata/log
  chmod 777 /usr/local/seata/log
else
  echo "seata相应目录已经存在"
fi
if [ ! -d /usr/local/sentinel/log  ];then
  mkdir -p /usr/local/sentinel/log
  chmod 777 /usr/local/sentinel/log
else
  echo "sentinel相应目录已经存在"
fi
if [ ! -d /usr/local/elasticsearch/log  ];then
  mkdir -p /usr/local/elasticsearch/data /usr/local/elasticsearch/log
  chmod 777 /usr/local/elasticsearch/log
else
  echo "elasticsearch相应目录已经存在"
fi