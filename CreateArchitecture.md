# Создаём архитектуру для сервера
1. Создаём папку, куда будем складывать логи
    - `mkdir logs` 
2. Возвращаемся в корень
    - `cd ..` или `cd ~`
3. Создаём файл с настройками сервера
    - `nano conflict.json`
4. Переносим в него инфу из файла [conflict.json](conflict.json)
5. Создаём скрипт с настройками запуска
    - `nano start.sh`
        - `#!/bin/bash`
        - `# Start server`
        - `cd server-files`
        - `./ArmaReforgerServer -config ~/conflict.json -profile ~/profile -maxFPS 60 -logStats 60000`
6. Создаём скрипт для обновления серверных файлов
    - `nano update.sh`
        - `#!/bin/bash`
        - `steamcmd +force_install_dir ~/server-files +login anonymous +app_update 1874900 +quit`
7. 

# Полезные ссылки
1. 
