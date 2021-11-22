#!/bin/bash

echo "==============开始部署================="
if [ ! -d "/home/work/app" ]; then
   mkdir -p "/home/work/app"
fi
cd /home/work/app

if [ ! -d "/home/work/app/letsgo" ]; then
   echo "==============git clone start================="
   git clone git@gitee.com:cross-street-pink-pig/letsgo.git
   echo "==============git clone success================="
fi
cd "/home/work/app/letsgo"

echo "==============切换到dev分支================="
git checkout dev
echo "==============拉取最新的dev分支代码================="
git pull origin dev

echo "==============启动容器================="
docker-compose build --force-rm test-server

docker-compose up -d

sleep 3

docker image prune -f # 强制移除none:none的image(https://docs.docker.com/config/pruning/)

echo "==============docker-compose build success================"