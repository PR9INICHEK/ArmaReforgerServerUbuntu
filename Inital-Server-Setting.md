## TODO
1. Создать файлы с командами, чтобы запускать сервер и обновлять его
2. Скорее всего тут при создании пользователя ему не настраивается, чтобы запускался bash, а не sh


# Алгоритм по установке сервера
1. Создать пользователя из под которого будем настраивать сервер
   - `sudo useradd -m <имя пользователя>`
      - Например, `sudo useradd -m armarserver`
   - ? Почему-то не получается сразу с этой командой выполнить `-p <пароль>`
2. Установить пароль
   - `sudo passwd <имя пользователя>`
      - Например, `sudo passwd armarserver`
   - Ввести пароль и подтвердить его
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
       - Например, `./ArmaReforgerServer -config /home/armarserver/conflict.json -logsDir /home/armarserver/logs -maxFPS 60 -logStats 60000`
14. 
15. Поддерживать консоль для сервера, чтобы он не выключался
    - `tmux attach || tmux new`
16.
17. Создавать папку под время и дату запуска сервера
    - `mkdir $(date +%Y%m%d_%H%M%S)` - https://askubuntu.com/questions/715431/mkdir-with-date-name
       - `date +%Y_%m_%d_%H_%M_%S` - https://stackoverflow.com/a/13732246
    - https://feedback.bistudio.com/T178172
    - Проверял через **create-folder.sh**, выдав ему права на создание папок - `chmod a+x create-folder.sh`
       - `cd logs`
         `mkdir $(date +%Y-%m-%d_%H-%M-%S)`



## Создаём простой скрипт для запуска сервера
1. `nano start.sh`
   - `cd server-files`
   - `./ArmaReforgerServer -config /home/armarserver/conflict.json -logsDir /home/armarserver/logs -maxFPS 60 -logStats 60000`
   - `chmod a+x start.sh`
      - https://help.ubuntu.com/community/Beginners/BashScripting
2. Создаём папку под логи
   - `cd logs`
   - `mkdir $(date +%Y-%m-%d_%H-%M-%S)`
3. 
4. 




18. Выключить root пользователя
19. Настроить подключение через SSH


## Полезные ссылки
1. https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting
2. https://community.bistudio.com/wiki/Arma_Reforger:Startup_Parameters
3. https://community.bistudio.com/wiki/DayZ:Hosting_a_Linux_Server#As_Daemon_With_Restart_and_Auto-Update
