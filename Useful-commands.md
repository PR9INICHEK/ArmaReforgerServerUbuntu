# Полезные команды
1. `journalctl -u arma-server.service --since "2025-04-03"`
    - Просмотр журнала по сервису за определённую дату
2. Проверяем, сколько занимает журнал
    - `sudo journalctl --disk-usage`
3. Выставить период для автоматической чистки журнала
    - `sudo journalctl --vacuum-time=`
        - Вносится изменение в переменную **MaxFileSec** для /etc/systemd/journald.conf
            - Но это не точно :)
4. 
