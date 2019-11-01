.PHONY:kill
kill:
	ps -ef |grep redis-server |grep 800 | awk '{print $2}' | xargs kill
