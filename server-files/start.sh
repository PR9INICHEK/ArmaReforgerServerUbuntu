#!/bin/bash
# Start server
cd server-files
./ArmaReforgerServer -config /home/armarserver/conflict.json -profile /home/armarserver/profile -maxFPS 60 -logStats 60000
