# create-folder.sh
#!/bin/bash

#Create directory for logs

`dir_name=$(date +%Y-%m-%d_%H-%M-%S)`

`cd logs`

`mkdir $dir_name`

`cd ..`


# TODO
Разобрать содержимое этого файла по другим

**TODO**
1. При закрытии окна подключения сервер выключается
   - Тут рекомендуют Docker - https://www.reddit.com/r/admincraft/comments/1ags04e/how_to_continue_running_the_server_on_my_vps/
   - https://habr.com/ru/articles/126996/
   - https://habr.com/ru/articles/327630/
5. Надо понять, как при отключении от сервера возвращать данные по серверу, что в терминале остались
6. Настроить обновление сервера по крону, начать с экспериментального



**Шаги, что выполнял для запуска сервера**
1. Выполнял шаги из https://developer.valvesoftware.com/wiki/SteamCMD#Linux
2. Надо было только ещё дополнительно выполнить команду `sudo adduser steam sudo` из https://askubuntu.com/a/1414685
3. Потом потребовалось выполнить PATH=$PATH:/usr/games из https://forums.linuxmint.com/viewtopic.php?p=1245194&sid=01cf5aabb486e1cad3e79d52183511a4#p1245194

_/home/steam/.config/ArmaReforger/_ по умолчанию создаются, если не указать куда складывать логи

? А может логи и конфиги сервера хранить в папке, что по умолчанию создаются

`cd /home/steam/.steam/steam/arma-reforger-server`

Тут создаю скрытую папку _.profile_ - `mkdir .profile`



По умолчанию при указании папки, сервер скачивается в home/steam/.steam/steam/steamcmd
  https://steamcommunity.com/app/544550/discussions/0/1621724915788946077/#c3140616601475537134
steam после home это имя пользователя - поэтому вводит в заблуждение
  
? Тут может создавать папку game-servers и уже остальные будут подпапками

`mkdir arma-reforger`
  server-data
    stable
    exp
  configs
    Conflict.json
  profiles
    stable
  bats
    start-server.txt
      `cd /home/steam/arma-reforger/server-data/`
      `./ArmaReforgerServer -config /home/steam/arma-reforger/configs/Conflict.json -profile /home/steam/arma-reforger/profiles/stable`

Выше можно экспу просто в отдельную папку отдать - **armarserverexp**


Запуск сервера:
1. `cd /home/steam/arma-reforger/bats/; bash start-server.txt`
   


`bash start-server.txt`
  ? Как передавать путь к этому файлу, чтобы запускать его из любого места




# Установка экспериментального сервера:
1. steamcmd
2. force_install_dir /home/steam/arma-reforger/server-data/exp
3. login anonymous
4. app_update 1890870 validate
5. quit
6. cd /home/steam/arma-reforger/bats
7. nano start-exp-server.txt
    - cd /home/steam/arma-reforger/server-data/exp
      ./ArmaReforgerServer -config /home/steam/arma-reforger/configs/exp-conflict.json -profile /home/steam/arma-reforger/profiles/exp
8. cd /home/steam/arma-reforger/configs
9. Опционально
    - cp Conflict.json exp-conflict.json

Запуск экспериментального сервера:
1. cd /home/steam/arma-reforger/bats/; bash start-exp-server.txt




`mkdir reforger`
`force_install_dir ./reforger/`

`force_install_dir ./armar_ds/`


Надо создать аналог update_armar_ds.txt для запуска сервера


??? Может нарисовать эту структуру, где что лежит
И может не стоит запариваться и для данных сервера задавать отдельную папку

**TODO** Улучшить инструкцию https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting, чтобы все свои ошибки учесть для будущих ребят



В итоге вы такое должны увидет
BACKEND      : Server registered with address: 194.87.209.172:2001
BACKEND      : Direct Join Code: 0625121340



Для работы с сервером
Чтение логов:
1. Сначала попадаем в папку с логами - cd arma-reforger/profiles/stable/logs
2. Потом смотрим, какие папки тут есть - ls
3. Копируем нужную и переходим в неё
4. Смотрим файлы из неё, например console.log - nano console.log


_LGSM_
https://linuxgsm.com/servers/armarserver/#v-pills-install

https://linuxgsm.com/servers/armarserver/

`sudo adduser armarserver`
  Если не из под root делаем
  СКОРЕЕ ВСЕГО НАДО ВОТ ЭТУ КОМАНДУ -  `sudo adduser armarserver sudo`
`su - armarserver`
  И пароль от этой новой учётки

curl -Lo linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh armarserver

./armarserver install

Warning! Missing dependencies: binutils bsdmainutils bzip2 lib32gcc-s1 lib32stdc++6 libcurl4 libsdl2-2.0-0:i386 pigz unzip
Warning! armarserver does not have sudo access. Manually install dependencies or run ./armarserver install as root.

Run: 'sudo dpkg --add-architecture i386; sudo apt update; sudo apt install binutils bsdmainutils bzip2 lib32gcc-s1 lib32stdc++6 libcurl4 libsdl2-2.0-0:i386 pigz unzip' as root to install missing dependencies.
    Need to get 86.3 MB of archives.
    After this operation, 224 MB of additional disk space will be used.


armarserver is not in the sudoers file.
  `sudo adduser armarserver sudo`


Можно попробовать настроить
  https://docs.linuxgsm.com/alerts/discord
    или в тг - https://docs.linuxgsm.com/alerts/telegram****


Какие есть редакторы:
  
Select an editor.  To change later, run 'select-editor'.
  1. /bin/nano        <---- easiest
  2. /usr/bin/vim.basic
  3. /usr/bin/vim.tiny
  4. /bin/ed


Можно попробовать это настроить для экспериментальной версии
https://docs.linuxgsm.com/configuration/linuxgsm-config



# Для экспы
1. sudo adduser armarexpserver
2. sudo adduser armarexpserver sudo
3. su - armarexpserver
4. Это не срабатывает. Перезапускаю соединение и ввожу сразу команды ниже
5. curl -Lo linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh armarserver
6. ./armarserver install
7. Add appid="1890870" to Your ./lgsm/config-lgsm/armarserver/armarserver.cfg
8. ./armarserver v
9. вручную переношу данные из конфига
10. sudo cp /home/armarserver/serverfiles/armarserver_config.json /home/armarexpserver/serverfiles/armarserver_config.json
11. А потом вот так...
12.  chown -R armarexpserver:armarexpserver /home/armarexpserver
    chown: changing ownership of '/home/armarexpserver/serverfiles/armarserver_config.json': Operation not permitted
13. Изменить bindPort и publicPort, например на 2201. Возможно что надо только один изменить




`cd log/console`
`ls`
смотрим последний файл лога и открываем его



Вот тут пишут, что можно использовать службу для авторестарта при падении
"You can then create new service for systemctl to run start.sh and the thing will run in the background and auto restart after crashes etc"
https://discord.com/channels/105462288051380224/976119935875026964/1281596036565172306


Monitoring armarserver: Querying port: gsquery: 127.0.0.1:null : 0/1: QUERYING
  Возможно, что тут используют gsquery для мониторинга


`crontab -e`
Для просмотра, что на расписании

*/5 * * * * /home/armarserver/armarserver monitor > /dev/null 2>&1
Для мониторинга каждые 5 минут

*/10 13-16 * * 4 /home/armarexpserver/armarserver update > /dev/null 2>&1
Для обновления экспы по четвергам, в период с 13 по 16 МСК

Для мониторинга экспы
*/5 * * * * /home/armarexpserver/armarserver monitor > /dev/null 2>&1
Но почему-то может не срабатывать

https://snapcraft.io/gswatcher
