# Профилирование и анализ добавления параллельности и шардирования
## Ошибки, которые я допустил при профилировании
### Проверять на пустом сервере. 
## Рубрика "Интересные факты"
### 10000rpc на put на протяжение 20 секунд, 1 тред, и мнооого connection'ов...
1 connection (не завелось)
![connections_1](last_report/connections/connections_1.png)
2 connection (завелось половину)
![connections_2](last_report/connections/connections_2.png)
3 connection (завелось)
![connections_3](last_report/connections/connections_3.png)
5 connection
![connections_5](last_report/connections/connections_5.png)
30 connection
![connections_30](last_report/connections/connections_30.png)
100 connection (оптимально, берём на следующие профайлы, также замерил аллокации)
![connections_100](last_report/connections/connections_100.png)
cpu
![cpu](last_report/connections/connections_cpu.png)
alloc
![alloc](last_report/connections/connections_alloc.png)
500 connection
![connections_500](last_report/connections/connections_500.png)
2500 connection
![connections_2500](last_report/connections/connections_2500.png)
10000 connection
![connections_10000](last_report/connections/connections_10000.png)
###  А теперь сделаем несколько тредов
1 threads (кол-во созданный файлов с индексацией в каждом шарде - 11)
![threads_1](last_report/threads/threads_1.png)
2 threads (кол-во созданный файлов с индексацией в каждом шарде - 5)
![threads_2](last_report/threads/threads_2.png)
3 threads (кол-во созданный файлов с индексацией в каждом шарде - 3-4). <- профайлинг alloc и cpu, lock возьмём по этой истории
![threads_3](last_report/threads/threads_3.png)
cpu
![cpu](last_report/threads/threads_cpu.png)
alloc
![alloc](last_report/threads/threads_alloc.png)
lock
![lock](last_report/threads/threads_lock.png)
4 threads (кол-во созданный файлов с индексацией в каждом шарде - 2)
![threads_4](last_report/threads/threads_4.png)
5 threads (кол-во созданный файлов с индексацией в каждом шарде - 1)
![threads_5](last_report/threads/threads_5.png)
6 threads (кол-во созданный файлов с индексацией в каждом шарде - 1)
![threads_6](last_report/threads/threads_6.png)
10 threads (кол-во созданный файлов с индексацией в каждом шарде - 1-0)
![threads_10](last_report/threads/threads_10.png)
13 threads (кол-во созданный файлов с индексацией в каждом шарде - 0)
![threads_13](last_report/threads/threads_13.png)
100 threads (кол-во созданный файлов с индексацией в каждом шарде - 0)
![threads_100](last_report/threads/threads_100.png)
### Я наполнил базу ~400 файлами и теперь можно приступать к нагрузкам на чтение :)
