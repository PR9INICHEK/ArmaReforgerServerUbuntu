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
6. Установить steamcmd
   - `sudo add-apt-repository multiverse; sudo dpkg --add-architecture i386; sudo apt update`
   - `sudo apt install steamcmd`
      - https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting#With_Bash_Scripts
7. (Опционально) Создать папку, куда будем складывать файлы сервера
   - по умолчанию Steam сам создаст папку по пути `home/<имя пользователя>/.steam/steam/steamcmd`
      - https://steamcommunity.com/app/544550/discussions/0/1621724915788946077/#c3140616601475537134
8. 
9.
10.
11.
12.
13. Установить сервер
14. Выключить root пользователя
15. Настроить подключение через SSH
