# language: ru

@IgnoreOnCIMainBuild



Функциональность: ФичаДляПроверкиТаблоПеременных
 


Сценарий: ФичаДляПроверкиТаблоПеременных
	И Я запоминаю значение выражения '1+1' в переменную "ИмяПеременной1"
	И Я запоминаю значение выражения 'Истина' в переменную "ИмяПеременной2"

	И Я запоминаю значение выражения '2+2' в переменную "ИмяПеременной1" глобально
	И Я запоминаю значение выражения 'Ложь' в переменную "ИмяПеременной2" глобально

