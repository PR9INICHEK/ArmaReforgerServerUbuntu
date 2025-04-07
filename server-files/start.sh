#!/bin/bash
# Start server
cd server-files
./ArmaReforgerServer -config ~/conflict.json -profile ~/profile -maxFPS 60 -logStats 60000
