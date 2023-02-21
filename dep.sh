#!/usr/bin/env bash

mvn clean package

echo 'copy files...'

scp -i /home/rkaravashkin/.ssh/test_k2.pub \
        target/demo-0.0.1-SNAPSHOT-jar-with-dependencies.jar \
        root@194.58.109.193:/home/ubuntu

echo 'restart server...'

#ssh -i /home/rkaravashkin/.ssh/test_k2.pub root@194.58.109.193 "kill -9 $(pgrep java) ;nohup java -jar /home/ubuntu/demo-0.0.1-SNAPSHOT-jar-with-dependencies.jar >log.txt &"

echo 'bye...'


