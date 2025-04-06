# Настройка автоматического рестарта
1. Проверяем, что у нас версия **systemd >= 229**
   - **TODO** Описать, как это сделать 
2. Добавляем в [конфигурацию](server-files/ServiceConfig.ini) параметры
   - _Restart=always_
   - _RuntimeMaxSec=7d_
3. ? Сейчас там указан _Restart=on-failure_
   - Будет конфликт, возможно, что проще решить через **cron** - https://stackoverflow.com/a/49527283

4. `crontab -e`
5. 


# Полезные ссылки
1. https://stackoverflow.com/a/50332245
