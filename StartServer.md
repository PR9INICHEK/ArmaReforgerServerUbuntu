# Запуск сервера как сервиса(службы)
1. `sudo systemctl start arma-server`

# Запуск сервера
1. `./start.sh`

# Запуск сервера, без скриптов
1. Переходим в папку с серверными файлами
    - `cd /home/<имя пользователя>/<путь до папки>`
        - Например, `cd server-files`
2. Запускаем тестово сервер, чтобы проверить, что все файлы подтянулись и данные пишутся в нужные папки
    - `./ArmaReforgerServer -config /home/<username>/<путь до папки с конфигом>/config.json -profile /home/<username>/<путь до папки профил> -maxFPS 60`
       - Например, `./ArmaReforgerServer -config ~/conflict.json -profile ~/profile -maxFPS 60 -logStats 60000`
3. 


## Другие команды если используем сервис
1. `sudo systemctl enable arma-server` - Enables server autostart when the OS starts.
2. `sudo systemctl disable arma-server` - Disables server autostart when the OS starts.
3. `sudo systemctl start arma-server` - Starting the server.
4. `sudo systemctl restart arma-server` - Restarting the server.
5. `sudo systemctl stop arma-server` - Stopping the server.
6. `sudo systemctl status arma-server` - Checking the server status.


# Полезные ссылки
1. https://community.bistudio.com/wiki/DayZ:Hosting_a_Linux_Server#As_Daemon_With_Restart_and_Auto-Update
2. https://www.freedesktop.org/software/systemd/man/latest/systemd.service.html#RestartSec=
3. Перезапуск сервера при баге с окончанием миссии
    - https://discord.com/channels/105462288051380224/976119935875026964/1358173968892170472
4. 
