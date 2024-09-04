Шаги, что выполнял для запуска сервера
1. Выполнял шаги из https://developer.valvesoftware.com/wiki/SteamCMD#Linux
2. Надо было только ещё дополнительно выполнить команду sudo adduser steam sudo из https://askubuntu.com/a/1414685
3. Потом потребовалось выполнить PATH=$PATH:/usr/games из https://forums.linuxmint.com/viewtopic.php?p=1245194&sid=01cf5aabb486e1cad3e79d52183511a4#p1245194

/home/steam/.config/ArmaReforger/ по умолчанию создаются, если не указать куда складывать логи


cd /home/steam/.steam/steam/arma-reforger-server
Тут создаю скрытую папку .profile
  mkdir .profile



По умолчанию при указании папки, сервер скачивается в home/steam/.steam/steam/steamcmd
steam после home это имя пользователя - поэтому вводит в заблуждение


mkdir reforger
force_install_dir ./reforger/

force_install_dir ./armar_ds/


Надо создать аналог update_armar_ds.txt для запуска сервера
