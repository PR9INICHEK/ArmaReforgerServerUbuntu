# Запуск сервера как сервиса(службы)
1. `sudo systemctl start arma-server`

# Запуск сервера
1. `./start.sh`

# Запуск сервера, без скриптов
1. Переходим в папку с серверными файлами
    - `cd /home/<имя пользователя>/<путь до папки>`
        - Например, `cd server-files`
2. Запускаем тестово сервер, чтобы проверить, что все файлы подтянулись и данные пишутся в нужные папки
    - `./ArmaReforgerServer -config /home/<username>/<путь до папки с конфигом>/config.json -logsDir /home/<username>/<путь до папки с логами> -maxFPS 60`
       - Например, `./ArmaReforgerServer -config ~/conflict.json -logsDir ~/logs -maxFPS 60 -logStats 60000`
3. 
