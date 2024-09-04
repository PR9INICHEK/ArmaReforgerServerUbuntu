Шаги, что выполнял для запуска сервера
1. Выполнял шаги из https://developer.valvesoftware.com/wiki/SteamCMD#Linux
2. Надо было только ещё дополнительно выполнить команду sudo adduser steam sudo из https://askubuntu.com/a/1414685
3. Потом потребовалось выполнить PATH=$PATH:/usr/games из https://forums.linuxmint.com/viewtopic.php?p=1245194&sid=01cf5aabb486e1cad3e79d52183511a4#p1245194

/home/steam/.config/ArmaReforger/ по умолчанию создаются, если не указать куда складывать логи



cd /home/steam/.steam/steam/arma-reforger-server
Тут создаю скрытую папку .profile
  mkdir .profile



По умолчанию при указании папки, сервер скачивается в home/steam/.steam/steam/steamcmd
  https://steamcommunity.com/app/544550/discussions/0/1621724915788946077/#c3140616601475537134
steam после home это имя пользователя - поэтому вводит в заблуждение
  

mkdir arma-reforger
  server-data
  config
  profile

force_install_dir /home/steam/arma-reforger/server-data
login anonymous
app_update 1874900 validate





Для удаления папок и файлов внутри
  rm -rf reforger


mkdir reforger
force_install_dir ./reforger/

force_install_dir ./armar_ds/


Надо создать аналог update_armar_ds.txt для запуска сервера


??? Может нарисовать эту структуру, где что лежит
И может не стоит запариваться и для данных сервера задавать отдельную папку
