# language: ru

@IgnoreOnCIMainBuild
@tree


Функциональность: ФичаДляПроверкиКопированияПрофиля

Сценарий: ФичаДляПроверкиКопированияПрофиля

	Когда Я копирую текущий профиль TestClient с установкой параметров:
		| 'Имя'        | 'Синоним'        | 'Порт' | 'Логин' | 'Пароль' |
		| 'ИмяПрофиля' | 'СинонимПрофиля' | '1538' | 'Админ' | 'Пароль' |
