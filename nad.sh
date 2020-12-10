  docker pull nadir47/hadoop:2.7.2

  docker network create --driver=bridge hadoop
  
  docker run -itd --net=hadoop -p 50070:50070 -p 8088:8088 -p 7077:7077 -p 16010:16010 \
            --name hadoop-master --hostname hadoop-master \
            nadir47/hadoop:2.7.2

  docker run -itd -p 8040:8042 --net=hadoop \
        --name hadoop-slave1 --hostname hadoop-slave1 \
              nadir47/hadoop:2.7.2

  docker run -itd -p 8041:8042 --net=hadoop \
        --name hadoop-slave2 --hostname hadoop-slave2 \
              nadir47/hadoop:2.7.2
docker exec -it hadoop-master ./start-hadoop.sh
