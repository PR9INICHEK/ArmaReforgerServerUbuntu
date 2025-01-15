# Устанавливаем steamcmd
1. Перейти в папку _home_
   - `cd ~` или `cd /home/<имя пользователя>`
2. Установить **steamcmd**
   - `sudo add-apt-repository multiverse; sudo dpkg --add-architecture i386; sudo apt update`
   - `sudo apt install steamcmd`
      - https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting#With_Bash_Scripts
3. Запустить **steamcmd**
   - `steamcmd`
4. Создать папку, куда будем складывать файлы сервера
   - `force_install_dir /home/<имя пользователя>/<путь до папки>`
      - Например, `force_install_dir /home/armarserver/server-files`
5. Авторизуемся из под анонима
   - `login anonymous`
6. Скачиваем серверные файлы
    - `app_update 1874900 validate`

# Полезные ссылки
1. https://developer.valvesoftware.com/wiki/SteamCMD
