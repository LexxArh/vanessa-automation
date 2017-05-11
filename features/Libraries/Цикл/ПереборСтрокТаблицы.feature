﻿# language: ru

@IgnoreOnOFBuilds
@IgnoreOn82Builds

@tree



Функциональность: Перебор строк таблицы
	Как разработчик
	Хочу иметь возможность пербрать все строки таблицы и выполнить над каждой строкой действие
	Чтобы выполнять сложные бизнес-процессы

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	
Сценарий: Цикл пока есть строки в таблице
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	И     я нажимаю на кнопку "Создать"
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	
	И Пока в таблице "ТабличнаяЧасть1" количество строк ">" 0 Тогда
		Тогда  в таблице с именем "ТабличнаяЧасть1" я удаляю текущую строку
		И Пауза 1
	И     в таблице "ТабличнаяЧасть1" 0 строк

	
	
	
Сценарий: Перебор всех строк таблицы с вложенной проверкой
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	И     я нажимаю на кнопку "Создать"
	
	И     Я запоминаю значение выражения "0" в переменную "СлужебнаяПеременная"
	И Пока выражение встроенного языка "Контекст.СлужебнаяПеременная < 4" истинно тогда
			И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
			И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
			И Я запоминаю значение выражения "Контекст.СлужебнаяПеременная+1" в переменную "СлужебнаяПеременная"

	
			
	И     Я запоминаю значение выражения "0" в переменную "СлужебнаяПеременная"
	И Пока выражение встроенного языка "Контекст.СлужебнаяПеременная < 3" истинно тогда
			И     в ТЧ "ТабличнаяЧасть2" я нажимаю на кнопку "Добавить"
			И     в ТЧ "ТабличнаяЧасть2" в поле "Реквизит число" я ввожу текст "1,00"
			И     В форме "Справочник1 (создание) *" в ТЧ "ТабличнаяЧасть2" я завершаю редактирование строки
			И     Я запоминаю значение выражения "Контекст.СлужебнаяПеременная+1" в переменную "СлужебнаяПеременная"
	
	
	И     Я запоминаю значение выражения "0" в переменную "СлужебнаяПеременная"
	И для каждой строки таблицы "ТабличнаяЧасть1" я выполняю
			И     В форме "Справочник1 (создание) *" в ТЧ "ТабличнаяЧасть1" я выбираю текущую строку
			И     в ТЧ "ТабличнаяЧасть1" в поле "Реквизит число" я ввожу текст "1,00"
			И     В форме "Справочник1 (создание) *" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
			И     Я запоминаю значение выражения "Контекст.СлужебнаяПеременная+1" в переменную "СлужебнаяПеременная"
			Тогда выражение внутреннего языка "Контекст.СлужебнаяПеременная < 5" Истинно	
			И для каждой строки таблицы "ТабличнаяЧасть2" я выполняю
				И     я запоминаю значение таблицы "ТабличнаяЧасть2" поля "Реквизит число" как "ЗначениеТЧ"
				И     Я запоминаю значение выражения "Строка(Число(Контекст.ЗначениеТЧ)+1)" в переменную "ЗначениеТЧ"
				И     в Таблицу "ТабличнаяЧасть2" в поле "Реквизит число" ввожу значение переменной "ЗначениеТЧ"
				И     В форме "Справочник1 (создание) *" в ТЧ "ТабличнаяЧасть2" я завершаю редактирование строки
			
	И     таблица формы с именем "ТабличнаяЧасть1" стала равной:
		|  'N' | 'Реквизит число' |
		|  '1' | '1,00'           |
		|  '2' | '1,00'           |
		|  '3' | '1,00'           |
		|  '4' | '1,00'           |
		
	И     таблица формы с именем "ТабличнаяЧасть2" стала равной:
		|  'N' | 'Реквизит число' |
		|  '1' | '5,00'           |
		|  '2' | '5,00'           |
		|  '3' | '5,00'           |
	И Я запоминаю значение выражения "1" в переменную "ГлобальныйФлагТогоЧтоЭтотШагВыполнялся" глобально

	

	
Сценарий: Проверка глобального флага
	Дано выражение внутреннего языка "КонтекстСохраняемый.ГлобальныйФлагТогоЧтоЭтотШагВыполнялся = 1" Истинно
	
	
Сценарий: Перебор всех строк таблицы с проверкой ТЧ
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	И     я нажимаю на кнопку "Создать"
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки

	И     Я запоминаю значение выражения "0" в переменную "СлужебнаяПеременная"
	И для каждой строки таблицы "ТабличнаяЧасть1" я выполняю
			И     В форме "Справочник1 (создание) *" в ТЧ "ТабличнаяЧасть1" я выбираю текущую строку
			И     в ТЧ "ТабличнаяЧасть1" в поле "Реквизит число" я ввожу текст "1,00"
			И     В форме "Справочник1 (создание) *" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
			И Я запоминаю значение выражения "Контекст.СлужебнаяПеременная+1" в переменную "СлужебнаяПеременная"
			Тогда выражение внутреннего языка "Контекст.СлужебнаяПеременная < 5" Истинно	
			
	И     таблица формы с именем "ТабличнаяЧасть1" стала равной:
		|  'N' | 'Реквизит число' |
		|  '1' | '1,00'           |
		|  '2' | '1,00'           |
		|  '3' | '1,00'           |
		|  '4' | '1,00'           |




		
Сценарий: Перебор всех строк таблицы без проверки ТЧ
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	И     я нажимаю на кнопку "Создать"
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     В форме "Справочник1 (создание)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки

	И     Я запоминаю значение выражения "0" в переменную "СлужебнаяПеременная"
	И для каждой строки таблицы "ТабличнаяЧасть1" я выполняю
			И     В форме "Справочник1 (создание) *" в ТЧ "ТабличнаяЧасть1" я выбираю текущую строку
			И     в ТЧ "ТабличнаяЧасть1" в поле "Реквизит число" я ввожу текст "1,00"
			И     В форме "Справочник1 (создание) *" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
			И Я запоминаю значение выражения "Контекст.СлужебнаяПеременная+1" в переменную "СлужебнаяПеременная"
			Тогда выражение внутреннего языка "Контекст.СлужебнаяПеременная < 5" Истинно	
		