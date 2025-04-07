Эта страница должна помочь с созданием сервера для игры _Arma Reforger_ на операционной системе **Ubuntu**

# Алгоритм
1. [Создание и настройка пользователя](CreateUser.md)
2. [Настроить подключение через SSH](SettingSSHConnection.md)
3. Выключить root пользователя
4. [Установка steamcmd](InstallSteamCmd.md)
5. [Создание архитектуры под сервер](CreateArchitecture.md)
6. [Запуск сервера](StartServer.md)
7. Настройка получения информации о сервере через Discord/Telegram
8. Забор логов к себе на комп для удобного просмотра
   - через программу [Xftp](https://www.netsarang.com/en/xftp/)
9. Автообновление сервера
   - https://feedback.bistudio.com/T165526
10. [Перезапуск сервера в определённое время](Restart.md)
11. `journalctl -u arma-server.service --since "2025-04-03"`
   - Просмотр журнала по сервису за определённую дату
12.    

## Для передачи файлов с сервера
[Инструкция](MoveFilesFromServer.md)


## TODO
1. Разобраться, как избавиться от этой ошибки
   - `11:04:44.835 BACKEND   (E): [RestApi] ID:[4] TYPE:[EBREQ_LOBBY_DSUnmanagedRegisterS2S] Error Code:500 - Internal Server Error, apiCode="", uid="a7621ffd-f355-4182-9517-9ed748ac8439", message="Internal server error"`
   - Мб перезагружать сервер не раз в 5 секунд, а реже
   - Спросил тут - https://discord.com/channels/105462288051380224/976119935875026964/1358413125283745953
   - Можно ещё тут посмотреть, что случилось
      - Redirecting stderr to '/home/armarserver/.local/share/Steam/logs/stderr.txt'
      - Apr 03 11:02:05 noname.nodomain.nowhere update.sh[285994]: Logging directory: '/home/armarserver/.local/share/Steam/logs'
2. 
