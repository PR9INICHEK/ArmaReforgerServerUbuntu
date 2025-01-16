# Настраиваем подключение через SSH
1. Создаём скрытую папку _.ssh_, в которой будем хранить публичный ключ и выдаём ей нужные права доступа
   - `mkdir -p ~/.ssh && chmod 700 ~/.ssh`
2. Создаём файл _authorized_keys_, в котором будем хранить публичный ключ и выдаём ему нужные права доступа
   - `touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys`
3. 


# Полезные ссылки
1. https://phoenixnap.com/kb/ssh-with-key
