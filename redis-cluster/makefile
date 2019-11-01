# inspect the master node info 
.PHONY: info7000
info7000:
	redis-cli -p 7000 info replication
.PHONY: cluter7000
cluter7000:
	redis-cli -p 7000 cluster info
.PHONY: infonodes
infonodes:
	redis-cli -p 7000 cluster nodes
.PHONY: infoslots
infoslots:
	redis-cli -p 7000 cluster slots			
# clean the project 	
.PHONY: clean
clean:
	rm *.log
