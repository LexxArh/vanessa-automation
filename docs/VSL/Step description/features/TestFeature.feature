﻿# language: ru

@IgnoreOnCIMainBuild



Функциональность: Тестовая фича для атовидео

 
Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Тестовый сценарий для автовидео

	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'   |
		| '000000002' | 'Второй элемент' |
