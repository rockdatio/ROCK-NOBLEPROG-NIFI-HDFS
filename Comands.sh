# SESION 1
https://drive.google.com/drive/folders/1xC0L7DHZNKb6Rlk99YQy26z1lyKvWt7-?usp=share_link
# SESION 2
https://drive.google.com/drive/folders/1iW8rIvzzwKXWdsALGe52uV9-pc9NC4X-?usp=share_link
# SESION 3
https://drive.google.com/drive/folders/1pPUDc0PhuNpurcn7pUiSaU2L0zc6gR8q?usp=share_link

# HADOOP
bash docker-deploy-hdp30.sh C:/Users/Nobleprog/Desktop/workspace/APACHE-NIFI-HDFS\ROCK-NOBLEPROG-NIFI-HDFS\Installation-hortonworks-hdfs
bash docker-deploy-hdp30.sh C:/workspace/APACHE-NIFI-HDFS/ROCK-NOBLEPROG-NIFI-HDFS/Installation-hortonworks-hdfs
docker ps
docker ps -a

# Setting admin ambari user and password
docker ps 
docker exec -it cf055 bash
ambari-admin-password-reset
admin
admin

# SESION 4
https://drive.google.com/drive/folders/127CAq-qPEvlre1yKh1C3bYQjU6An6jpM?usp=share_link
# SESION 5
https://drive.google.com/drive/folders/1EzsBDyO03JNxWKBlmiLL66n6BK_ZwAhF?usp=share_link

# NIFI
bash docker-deploy-hdf311.sh C:/workspace/APACHE-NIFI-HDFS/ROCK-NOBLEPROG-NIFI-HDFS/Installation-hortonworks-nifi-kafka/
docker ps
docker ps -a

# Setting admin ambari user and password
docker ps 
docker exec -it cf055 bash

# SESION 6
https://drive.google.com/drive/folders/1LBplN1QH47OymURr-7mNO5lkhE04jydC?usp=share_link
# SESION 7
https://drive.google.com/drive/folders/1y5o9rzLJE6TMWLMjJEiYFdCFA2-042QT?usp=share_link

# SESION 8
https://drive.google.com/drive/folders/1UbNsPnvVrAttK5P3t3xjCl0xH-j_EyNv?usp=share_link

/var/lib/nifi/content_repository
/var/lib/nifi/provenance_repository/
/var/lib/nifi/database_repository/
/var/lib/nifi/flowfile_repository/
ls -h /usr/hdf/3.1.2.0-7/etc/nifi/conf.dist/
cat /usr/hdf/3.1.2.0-7/etc/nifi/conf.dist/nifi.properties
ls -l /var/lib/nifi/

cp -R /var/lib/nifi/ /tmp/data/nifi/

https://regex101.com/
ls -l /tmp/data/datalake/input | awk '{print $9}'
(NOBLETEST)
-(\d{2})
-(\d{2})
.*

-- custom  procesors
ls /var/lib/nifi/work/nar/extensions/

-- CRONTAB GENERATOR
http://www.cronmaker.com/;jsessionid=node0czqro7np32zlayuap96n9t5p16963.node0?0

# SESION 9
# Kafka commands
/usr/hdf/3.1.2.0-7/kafka/bin/kafka-topics.sh --zookeeper sandbox-hdf.hortonworks.com:2181 --list
/usr/hdf/3.1.2.0-7/kafka/bin/kafka-topics.sh --zookeeper sandbox-hdf.hortonworks.com:2181 --topic grupo1 --create --partitions 3 --replication-factor 1

/usr/hdf/3.1.2.0-7/kafka/bin/kafka-console-producer.sh --broker-list sandbox-hdf.hortonworks.com:6667 --topic grupo1
/usr/hdf/3.1.2.0-7/kafka/bin/kafka-console-consumer.sh --bootstrap-server sandbox-hdf.hortonworks.com:6667 --topic grupo1


/usr/hdf/3.1.2.0-7/kafka/bin/kafka-console-consumer.sh --bootstrap-server sandbox-hdf.hortonworks.com:6667 --topic trucking_data_traffic
/usr/hdf/3.1.2.0-7/kafka/bin/kafka-console-consumer.sh --bootstrap-server sandbox-hdf.hortonworks.com:6667 --topic trucking_data_truck_enriched

# SESION 10


