# Настраиваем подключение через SSH
1. Создаём приватный и публичный ключ **на компьютере с которого будем заходить**
2. Создаём скрытую папку _.ssh_, в которой будем хранить публичный ключ и выдаём ей нужные права доступа
   - `mkdir -p ~/.ssh && chmod 700 ~/.ssh`
3. Создаём файл _authorized_keys_, в котором будем хранить публичный ключ и выдаём ему нужные права доступа
   - `touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys`
      - Побольше об этой команде - https://phoenixnap.com/kb/touch-command-in-linux
4. `cd .ssh`
5. `nano authorized_keys`
6. Переносим данные **публичного** ключа в файл

# Отключаем доступ по логину и паролю
1. `sudo nano /etc/ssh/sshd_config`
2. 

# Полезные ссылки
1. https://phoenixnap.com/kb/ssh-with-key
