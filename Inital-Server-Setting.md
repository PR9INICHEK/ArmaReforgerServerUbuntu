# Алгоритм по установке сервера

1. Создать пользователя из под которого будем настраивать сервер
   - `sudo useradd -m <имя пользователя>`
   - ? Почему-то не получается сразу с этой командой выполнить `-p <пароль>`
2. Установить пароль
   - sudo passwd <имя пользователя>
1. ? Выдать ему необходимые права
   - `sudo adduser <имя пользователя> sudo`
   - Например, `sudo adduser armarserver sudo`
2. Запустить консоль из под созданного пользователя
   - `sudo -u <имя пользователя> -s`
   - Например, `sudo -u armarserver -s`
3. Перейти в папку _home_
   - `cd ~` или `cd /home/<имя пользователя>`
4. Установить steamcmd
   - `sudo add-apt-repository multiverse; sudo dpkg --add-architecture i386; sudo apt update`
   - `sudo apt install steamcmd`
      - https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting#With_Bash_Scripts
7.
8. Установить сервер
9. Выключить root пользователя
10. Настроить подключение через SSH
