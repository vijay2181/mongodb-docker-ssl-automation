#!/bin/bash

nohup gosu mongodb mongo testdb --eval "db.createUser({user: 'admin', pwd: 'admin', roles:[{ role: 'root', db: 'testdb' }, { role: 'read', db: 'local' }]});"

nohup gosu mongodb mongo --eval 'db.createUser({user: "vijay", pwd: "vijay", roles:[{ role: "root", db: "admin"}]});'

nohup gosu mongodb mongo admin --eval "db.shutdownServer();"
