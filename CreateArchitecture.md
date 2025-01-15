# Создаём архитектуру для сервера
1. Создаём папку, куда будем складывать логи
    - `mkdir logs` 
2. Создаём файл с настройками сервера
    - `nano conflict.json`
3. Переносим в него инфу из файла [conflict.json](conflict.json)
4. Создаём файл с настройками запуска
    - `nano start.sh`
        - `# Start server`
        - `cd ..`
        - `cd server-files`
        - `./ArmaReforgerServer -config ~/conflict.json -profile ~/profile -maxFPS 60 -logStats 60000`
5. 
