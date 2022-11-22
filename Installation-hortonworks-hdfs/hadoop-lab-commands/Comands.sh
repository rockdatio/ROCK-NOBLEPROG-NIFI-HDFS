# SESION 3

# HADOOP
bash docker-deploy-hdp30.sh C:/workspace/APACHE-NIFI-HDFS/ROCK-NOBLEPROG-NIFI-HDFS/Installation-hortonworks-hdfs
docker ps
docker ps -a

# Setting admin ambari user and password
docker ps 
docker exec -it cf055 bash
ambari-admin-password-reset
admin
admin

# Hadoop laboratorio
docker exec -it cf0 bash
# Admin commands 
su - hdfs
hdfs dfsadmin -report
hdfs dfsadmin -printTopology
hdfs dfsadmin -refreshNodes
# come back to root user
exit 

# Managment
hdfs dfs -help
hdfs dfs -ls /
hdfs dfs -mkdir /user/root/workspace
# hdfs dfs -mkdir /user/hive/datalake_qas
#Permission denied: user=root, access=WRITE, inode="/user/hive":hive:hdfs:drwxr-xr-x
# escribimos en root porque es ahí donde tenemos accesos.
hdfs dfs -mkdir /user/root/workspace/datalake_dev
hdfs dfs -mkdir /user/root/workspace/datalake_qas
hdfs dfs -mkdir /user/root/workspace/datalake_prod

hdfs dfs -mkdir /user/root/workspace/datalake_dev/landing
hdfs dfs -mkdir /user/root/workspace/datalake_dev/bronze
hdfs dfs -mkdir /user/root/workspace/datalake_dev/silver
hdfs dfs -mkdir /user/root/workspace/datalake_dev/golden

# creación de carpetas recursivas
hdfs dfs -mkdir -p /user/root/workspace/example/carpeta2/carpetaA/carpetaB/carpeta
# Eliminando carpetas recursivas
hdfs dfs -rm -f -r /user/root/workspace/example

# archivo vacio
hdfs dfs -touchz /user/root/workspace/archivo_vacio.txt
hdfs dfs -touchz /user/root/workspace/_SUCCESS
hdfs dfs -touchz /user/root/workspace/_ERROR

# subida de archivos 
hdfs dfs -put /tmp/data/dataset/persona.data /user/root/workspace/datalake_dev/landing
hadoop fs -copyFromLocal /tmp/data/dataset/empresa.data /user/root/workspace/datalake_dev/landing
hdfs dfs -put /tmp/data/dataset/fragmento.data /user/root/workspace/datalake_dev/landing
# patron de subida
hdfs dfs -put /tmp/data/dataset/transacciones*.data /user/root/workspace/datalake_dev/landing
# leer un archivo con hdfs  
hdfs dfs -cat /user/root/workspace/datalake_dev/landing/persona.data
# integridad de datos 
hdfs dfs -cat /user/root/workspace/datalake_dev/landing/persona.data | cksum
cksum /tmp/data/dataset/persona.data
# Eliminando carpetas recursivas
hdfs dfs -rm -f -r /user/root/workspace/example
hdfs dfs -rm -f -r /user/root/workspace/datalake_dev/landing/transacciones-*

# trash
 hdfs dfs -ls /user/root/.Trash/
  hdfs dfs -rm -r -f /user/root/.Trash/*

# Replication factor
hdfs dfs -setrep -w 3 -R /user/root/workspace/datalake_dev/landing/
hdfs dfs -setrep -w 3 /user/root/workspace/datalake_dev/landing/empresa.data

hdfs dfs -setrep -w 1 -R /user/root/workspace/datalake_dev/landing/
hdfs dfs -setrep -w 1 /user/root/workspace/datalake_dev/landing/empresa.data

# modificando tamaño bloque # limite 1 gb #default 128 mb <> 131 072 kb
hdfs dfs -D dfs.blocksize=1048576 -put /tmp/data/dataset/empresa.data /user/root/workspace/datalake_dev/landing/empresa2.data

# Permission
su hdfs
# Cambiar los dueños al archivo empresa2.data
hdfs dfs -chown usuario1:grupo1 /user/root/workspace/datalake_dev/landing/empresa2.data
# Cambiar los dueños recursivo desde la carpeta landing  
hdfs dfs -chown -R hive:hadoop /user/root/workspace/datalake_dev/landing/

# Otorgar permisos 750 al archivo empresa2.data
hdfs dfs -chmod 750 /user/root/workspace/datalake_dev/landing/empresa2.data
# Validar
hdfs dfs -ls /user/root/workspace/datalake_dev/landing/
# Permisos 777 recursivos a la carpeta landing /user/root/workspace/datalake_dev/landing/
hdfs dfs -chmod -R 777 /user/root/workspace/datalake_dev/landing/
# Validar
hdfs dfs -ls /user/root/workspace/datalake_dev/landing/

hdfs dfs -chown hive:hadoop /user/root/workspace/
hdfs dfs -chmod -R 777 /user/root/workspace/

# Permisos ACL
hdfs dfs -setfacl -R -m user:usuarioA:rwx /user/root/workspace/datalake_dev/landing/empresa.data

/user/root/workspace/{USERNAME}
     /ejercicio1
                carpeta1
                        subcarpeta1
                                    persona.data
                        subcarpeta2
                        subcarpeta3
                carpeta2
                        empresa.data
                carpeta3
                data1
                      diabetes.csv (permisos: usuario5:grupoA 755)
                      zipcodes.parquet (permisos 700)
                data2 (permisos: recursivos usuario2:grupoK 777)
                      2022-11-17
                                diabetes.csv
                      2022-11-16
                                diabetes.csv
                      2022-11-15
                data3
