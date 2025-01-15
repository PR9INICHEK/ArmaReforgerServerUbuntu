# create-folder.sh
#!/bin/bash

#Create directory for logs

`dir_name=$(date +%Y-%m-%d_%H-%M-%S)`

`cd logs`

`mkdir $dir_name`

`cd ..`
