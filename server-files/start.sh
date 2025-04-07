#!/bin/bash
# Start server
cd server-files
./ArmaReforgerServer -config /home/armaserver/conflict.json -profile /home/armaserver/profile -maxFPS 60 -logStats 60000
