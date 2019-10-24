#!/bin/bash

cd /home/vagrant
wget https://www.sqlite.org/2019/sqlite-autoconf-3300100.tar.gz
tar -xzvf sqlite-autoconf-3300100.tar.gz 
cd sqlite-autoconf-3300100/
   
./configure --prefix=$HOME/opt/sqlite
make && make install
export PATH=$HOME/opt/sqlite/bin:$PATH
export LD_LIBRARY_PATH=$HOME/opt/sqlite/lib
export LD_RUN_PATH=$HOME/opt/sqlite/lib
sqlite3 --version
