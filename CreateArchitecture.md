# Создаём архитектуру для сервера
1. Создаём папку, куда будем складывать логи
    - `mkdir logs` 
2. Возвращаемся в корень
    - `cd ..` или `cd ~`
3. Создаём файл с настройками сервера
    - `nano conflict.json`
4. Переносим в него инфу из файла [conflict.json](server-files/conflict.json)
5. Создаём скрипт с настройками запуска
    - `nano start.sh`
        - `#!/bin/bash`
        - `# Start server`
        - `cd server-files`
        - `./ArmaReforgerServer -config ~/conflict.json -profile ~/profile -maxFPS 60 -logStats 60000`
            - Используем параметр [-keepNumOfLogs](https://community.bistudio.com/wiki/Arma_Reforger:Startup_Parameters#keepNumOfLogs) если нам нужно хранить логов больше 10 штук
                -  Такое обычно требуется, если происходит отказ Мастер-сервера у Армы и нужно разобраться, сколько раз перезагружался сервер. Но это не точно
                -  Скорее всего это можно сделать иным способом, да и вряд ли это требуется вообще выяснять
            - Используем параметр [-logTime](https://community.bistudio.com/wiki/Arma_Reforger:Startup_Parameters#logTime) если нам нужна дата, помимо времени у логов
6. Создаём скрипт для обновления серверных файлов
    - `nano update.sh`
        - `#!/bin/bash`
        - `/home/armarserver/.steam/steam/steamcmd/steamcmd.sh +force_install_dir ~/server-files +login anonymous +app_update 1874900 +quit`
7. Выдаём ему права на изменение файлов
    - `sudo chmod +x ~/update.sh`
8. Создаём конфиг для службы
    - `sudo nano /etc/systemd/system/arma-server.service`
    - Берём данные с [конфига](server-files/ServiceConfig.ini)
9. Перезапускаем **FIX-ME**, чтобы новая служба добавилась
    - `sudo systemctl daemon-reload`
10. 

# Полезные ссылки
1. https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting
2. https://community.bistudio.com/wiki/Arma_Reforger:Startup_Parameters
3. https://community.bistudio.com/wiki/DayZ:Hosting_a_Linux_Server#As_Daemon_With_Restart_and_Auto-Update
4. https://discord.com/channels/105462288051380224/976119935875026964/976247538153848832
