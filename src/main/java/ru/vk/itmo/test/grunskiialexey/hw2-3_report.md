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
500 connection
![connections_500](last_report/connections/connections_500.png)
2500 connection
![connections_2500](last_report/connections/connections_2500.png)
10000 connection
![connections_10000](last_report/connections/connections_10000.png)
###  А давайте увеличим, кол-во тредов и посмотрим на гистограммы