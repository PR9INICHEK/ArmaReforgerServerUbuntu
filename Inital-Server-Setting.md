# Алгоритм по установке сервера
1. Создать пользователя из под которого будем настраивать сервер
   - `sudo useradd -m <имя пользователя>`
   - ? Почему-то не получается сразу с этой командой выполнить `-p <пароль>`
2. Установить пароль
   - sudo passwd <имя пользователя>
3. ? Выдать ему необходимые права
   - `sudo adduser <имя пользователя> sudo`
      - Например, `sudo adduser armarserver sudo`
4. Запустить консоль из под созданного пользователя
   - `sudo -u <имя пользователя> -s`
      - Например, `sudo -u armarserver -s`
5. Перейти в папку _home_
   - `cd ~` или `cd /home/<имя пользователя>`
6. Установить **steamcmd**
   - `sudo add-apt-repository multiverse; sudo dpkg --add-architecture i386; sudo apt update`
   - `sudo apt install steamcmd`
      - https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting#With_Bash_Scripts
7. Запустить **steamcmd**
   - `steamcmd`
8. Создать папку, куда будем складывать файлы сервера
   - `force_install_dir /home/<имя пользователя>/<путь до папки>`
      - Например, `force_install_dir /home/armarserver/server-files`
9. Авторизуемся из под анонима
   - `login anonymous`
10. Скачиваем серверные файлы
    - `app_update 1874900 validate`
11. Создаём папку, куда будем складывать логи
    - `mkdir logs` 
12. Создаём файл с настройками сервера
    - `nano conflict.json`
13. Переходим в папку с серверными файлами
   - `cd /home/<имя пользователя>/<путь до папки>`
      - Например, `cd server-files`
14. Запускаем тестово сервер, чтобы проверить, что все файлы подтянулись и данные пишутся в нужные папки
   - `./ArmaReforgerServer -config /home/<username>/<путь до папки с конфигом>/config.json -logsDir /home/<username>/<путь до папки с логами> -maxFPS 60`
      - Например, `./ArmaReforgerServer -config /home/armarserver/conflict.json -logsDir /home/armarserver/logs -maxFPS 60`
14. 
15. Поддерживать консоль для сервера, чтобы он не выключался
16.
17.
18. 
19. Выключить root пользователя
20. Настроить подключение через SSH
