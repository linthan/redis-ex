from redis.sentinel import Sentinel
sentinel=Sentinel([("127.0.0.1",26379),("127.0.0.1",26380),("127.0.0.1",26381)], socket_timeout=0.1)
print(sentinel.discover_master("mymaster"))
print(sentinel.discover_slaves("mymaster"))