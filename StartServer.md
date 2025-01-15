Переходим в папку с серверными файлами

`cd /home/<имя пользователя>/<путь до папки>`

Например, `cd server-files`

# Запуск сервера
1. `./start.sh`

# Запуск сервера, без скриптов
2. Запускаем тестово сервер, чтобы проверить, что все файлы подтянулись и данные пишутся в нужные папки
    - `./ArmaReforgerServer -config /home/<username>/<путь до папки с конфигом>/config.json -logsDir /home/<username>/<путь до папки с логами> -maxFPS 60`
       - Например, `./ArmaReforgerServer -config /home/armarserver/conflict.json -logsDir /home/armarserver/logs -maxFPS 60 -logStats 60000`
3. 
