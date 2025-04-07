# Настройка автоматического рестарта
1. Проверяем, что у нас версия **systemd >= 229**
   - **TODO** Описать, как это сделать 
2. Добавляем в [конфигурацию](server-files/ServiceConfig.ini) параметры
   - _Restart=always_
   - _RuntimeMaxSec=7d_
3. ? Сейчас там указан _Restart=on-failure_
   - Будет конфликт, возможно, что проще решить через **cron** - https://stackoverflow.com/a/49527283

4. `sudo crontab -e`
   - `0 6 * * * sudo /bin/systemctl try-restart arma-server`
      - Для перезапуска в 6 утра каждого дня


# Полезные ссылки
1. https://stackoverflow.com/a/50332245
2. https://opensource.com/article/17/11/how-use-cron-linux
3. https://crontab.guru
4. https://askubuntu.com/a/857948
