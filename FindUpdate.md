ИДЕАЛЬНЫЙ ВАРИАНТ - https://feedback.bistudio.com/T179478

**Алгоритм:**
1. Получаем информацию из _steamdb depots_
2. Сохраняем часть из неё себе - чтобы получить версию и дату - текущая версия, что установлена у нас на сервере
3. В дни, когда обычно обновления выходят, по расписанию делаем запрос в _steamdb depots_ и получаем данные
    - Можно попробовать в остальные дни иногда тоже запросы отправлять, в рабочее время разрабов. На всякий случай
5. Сравниваем полученную инфу с нашей
6. Если данные новее, то запускаем скрипт на обновление сервера
7. Если нет, то завершаем его работу


**Инфа от ребят из сообщества:**

&nbsp;&nbsp;&nbsp;&nbsp;https://discord.com/channels/105462288051380224/976119935875026964/1283723270432231506

_bacon:_
> I have a background process that monitors steamdb depots and rebuilds the docker image once a new update is made to the public branch

> I get the information from steamctl --anonymous apps product_info APP_ID

> where APP_ID is one of
  {
    '1874900': 'Arma Reforger Server', 
    '1890870': 'Arma Reforger Experimental Server'
  }
> then examine depots.branches

> store the last known update time on disk somewhere and then simply compare it with the time of last update of the public branch, if its bigger then an update is available

Возможно, что это надо делать из-за нюанса https://feedback.bistudio.com/T165526

_Marko:_
> I just do it with install script, attempt update via steamcmd, whenever server starts/restarts.
> 
> You could use cron to check steamdb for update every n time, and sigkill server should update be detected
> 
> If there is no update, steamcmd at launch will take like 5s to complete, making startup those 5s longer.

_JasonREDUX:_ 
> my GitHub Actions build the docker image every week day 6AM and 6PM UTC time
> 
> if there is an update in between i will trigger it manually i guess



Можно попробовать подсмотреть у LinuxGSM как вызываются различные сервисы для отправки или получения данных

https://github.com/GameServerManagers/LinuxGSM/blob/master/lgsm/modules/alert_telegram.sh

