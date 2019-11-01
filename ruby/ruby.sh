#!/bin/bash
cd /root/ruby/ruby-2.6.5
./configure --prefix=/usr/local/ruby
make && make install

cd /root/ruby && gem install -l redis-4.1.3.gem
