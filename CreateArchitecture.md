# Создаём архитектуру для сервера
1. Создаём папку, куда будем складывать логи
    - `mkdir logs` 
2. Возвращаемся в корень
    - `cd ..` или `cd ~`
3. Создаём файл с настройками сервера
    - `nano conflict.json`
4. Переносим в него инфу из файла [conflict.json](conflict.json)
5. Создаём файл с настройками запуска
    - `nano start.sh`
        - `# Start server`
        - `cd server-files`
        - `./ArmaReforgerServer -config ~/conflict.json -profile ~/profile -maxFPS 60 -logStats 60000`
6. 
