# redis-ex
An Experiment Lab for redis 

# Experiment No.1
## start a cluster of redis sentinel, a master redis server and two slaves redis server
$ docker-compose up redis-sentinel

## a python client to connect the cluster of redis sentinel for get the master node info and the slave nodes info
$ python client/py/main.py


