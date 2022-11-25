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

# SESION 9
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


PRETTY_NAME="Debian GNU/Linux 10 (buster)"
NAME="Debian GNU/Linux"
VERSION_ID="10"
VERSION="10 (buster)"
VERSION_CODENAME=buster
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"

2022-11-25 01:45:36+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.19-1debian10 started.
2022-11-25 01:45:36+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2022-11-25 01:45:36+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.19-1debian10 started.
2022-11-25 01:45:36+00:00 [Note] [Entrypoint]: Initializing database files
2022-11-25 01:45:46+00:00 [Note] [Entrypoint]: Database files initialized
2022-11-25 01:45:46+00:00 [Note] [Entrypoint]: Starting temporary server
2022-11-25 01:45:47+00:00 [Note] [Entrypoint]: Temporary server started.
2022-11-25 01:45:56+00:00 [Note] [Entrypoint]: GENERATED ROOT PASSWORD: chaengaeGoo5aiy4ieKoh6OLeiranie9
2022-11-25 01:45:56+00:00 [Note] [Entrypoint]: Creating database "flinksql"
2022-11-25 01:45:56+00:00 [Note] [Entrypoint]: Creating user "flink"
2022-11-25 01:45:56+00:00 [Note] [Entrypoint]: Giving user "flink" access to schema "flinksql"

wei8Vo0ohd8soh2rai0no9eeN2hien8j
CREATE USER 'group1'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
GRANT ALL ON `group1`.* TO 'group1'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE, CREATE ROLE, DROP ROLE ON *.* TO `group1`@`%` WITH GRANT OPTION;
GRANT APPLICATION_PASSWORD_ADMIN,AUDIT_ADMIN,BACKUP_ADMIN,BINLOG_ADMIN,BINLOG_ENCRYPTION_ADMIN,CLONE_ADMIN,CONNECTION_ADMIN,ENCRYPTION_KEY_ADMIN,GROUP_REPLICATION_ADMIN,INNODB_REDO_LOG_ARCHIVE,PERSIST_RO_VARIABLES_ADMIN,REPLICATION_APPLIER,REPLICATION_SLAVE_ADMIN,RESOURCE_GROUP_ADMIN,RESOURCE_GROUP_USER,ROLE_ADMIN,SERVICE_CONNECTION_ADMIN,SESSION_VARIABLES_ADMIN,SET_USER_ID,SYSTEM_USER,SYSTEM_VARIABLES_ADMIN,TABLE_ENCRYPTION_ADMIN,XA_RECOVER_ADMIN ON *.* TO `group1`@`%` WITH GRANT OPTION;
FLUSH PRIVILEGES;

jdbc:mysql://mysqlhost:3306/flinksql
com.mysql.jdbc.Driver
/tmp/data/libs/mysql-connector-java-8.0.17.jar
root

# SESION 10

# Kafka commands
/usr/hdf/3.1.2.0-7/kafka/bin/kafka-topics.sh --zookeeper sandbox-hdf.hortonworks.com:2181 --list
/usr/hdf/3.1.2.0-7/kafka/bin/kafka-topics.sh --zookeeper sandbox-hdf.hortonworks.com:2181 --topic grupo1 --create --partitions 3 --replication-factor 1

/usr/hdf/3.1.2.0-7/kafka/bin/kafka-console-producer.sh --broker-list sandbox-hdf.hortonworks.com:6667 --topic grupo1
/usr/hdf/3.1.2.0-7/kafka/bin/kafka-console-consumer.sh --bootstrap-server sandbox-hdf.hortonworks.com:6667 --topic grupo1


/usr/hdf/3.1.2.0-7/kafka/bin/kafka-console-consumer.sh --bootstrap-server sandbox-hdf.hortonworks.com:6667 --topic trucking_data_traffic
/usr/hdf/3.1.2.0-7/kafka/bin/kafka-console-consumer.sh --bootstrap-server sandbox-hdf.hortonworks.com:6667 --topic trucking_data_truck_enriched



