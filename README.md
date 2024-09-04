TODO
1. При закрытии окна подключения сервер выключается
2.   Тут рекомендуют Docker - https://www.reddit.com/r/admincraft/comments/1ags04e/how_to_continue_running_the_server_on_my_vps/
3.   https://habr.com/ru/articles/126996/
4.   https://habr.com/ru/articles/327630/
5. Надо понять, как при отключении от сервера возвращать данные по серверу, что в терминале остались


Шаги, что выполнял для запуска сервера
1. Выполнял шаги из https://developer.valvesoftware.com/wiki/SteamCMD#Linux
2. Надо было только ещё дополнительно выполнить команду sudo adduser steam sudo из https://askubuntu.com/a/1414685
3. Потом потребовалось выполнить PATH=$PATH:/usr/games из https://forums.linuxmint.com/viewtopic.php?p=1245194&sid=01cf5aabb486e1cad3e79d52183511a4#p1245194

/home/steam/.config/ArmaReforger/ по умолчанию создаются, если не указать куда складывать логи

? А может логи и конфиги сервера хранить в папке, что по умолчанию создаются

cd /home/steam/.steam/steam/arma-reforger-server
Тут создаю скрытую папку .profile
  mkdir .profile



По умолчанию при указании папки, сервер скачивается в home/steam/.steam/steam/steamcmd
  https://steamcommunity.com/app/544550/discussions/0/1621724915788946077/#c3140616601475537134
steam после home это имя пользователя - поэтому вводит в заблуждение
  
? Тут может создавать папку game-servers и уже остальные будут подпапками

mkdir arma-reforger
  server-data
  configs
    Conflict.json
  profiles
    stable
  bats
    start-server.txt
      cd /home/steam/arma-reforger/server-data/
      ./ArmaReforgerServer -config /home/steam/arma-reforger/configs/Conflict.json -profile /home/steam/arma-reforger/profiles/stable

force_install_dir /home/steam/arma-reforger/server-data
login anonymous
app_update 1874900 validate


Запуск сервера:
1. cd /home/steam/arma-reforger/bats/; bash start-server.txt
   


bash start-server.txt
  ? Как передавать путь к этому файлу, чтобы запускать его из любого места



Для удаления папок и файлов внутри
  rm -rf reforger


mkdir reforger
force_install_dir ./reforger/

force_install_dir ./armar_ds/


Надо создать аналог update_armar_ds.txt для запуска сервера


??? Может нарисовать эту структуру, где что лежит
И может не стоит запариваться и для данных сервера задавать отдельную папку

TODO Улучшить инструкцию https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting, чтобы все свои ошибки учесть для будущих ребят



В итоге вы такое должны увидет
BACKEND      : Server registered with address: 194.87.209.172:2001
BACKEND      : Direct Join Code: 0625121340



Для работы с сервером
Чтение логов:
1. Сначала попадаем в папку с логами - cd arma-reforger/profiles/stable/logs
2. Потом смотрим, какие папки тут есть - ls
3. Копируем нужную и переходим в неё
4. Смотрим файлы из неё, например console.log - nano console.log
