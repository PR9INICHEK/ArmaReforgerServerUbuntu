# Полезные команды
1. `journalctl -u arma-server.service --since "2025-04-03"`
    - Просмотр журнала по сервису за определённую дату
2. Выставить период для автоматической чистки журнала
    - `journalctl --vacuum-time=`
        - Вносится изменение в переменную **MaxFileSec** для /etc/systemd/journald.conf
3. 
