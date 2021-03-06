# language: ru

@IgnoreOnCIMainBuild
@tree
@classname=ModuleExceptionPath

Функционал: МодульныеТестыVA.Тест_СтрокаОшибка
	Как Разработчик
	Я Хочу чтобы возвращаемое значение метода совпадало с эталонным
	Чтобы я мог гарантировать работоспособность метода

@OnServer
Сценарий: ПроверитьРавенствоСтрокиНаЛожь
	И я выполняю код встроенного языка на сервере
	| 'Тест_СтрокаОшибка.ПроверитьРавенствоСтрокиНаЛожь(Контекст());' |

@OnServer
Сценарий: ПроверитьНеРавенствоСтрокиНаЛожь
	И я выполняю код встроенного языка на сервере
	| 'Тест_СтрокаОшибка.ПроверитьНеРавенствоСтрокиНаЛожь(Контекст());' |

@OnServer
Сценарий: ПроверитьВхождениеСтрокиНаЛожь
	И я выполняю код встроенного языка на сервере
	| 'Тест_СтрокаОшибка.ПроверитьВхождениеСтрокиНаЛожь(Контекст());' |

Сценарий: ПроверитьРавенствоСтрокиНаЛожь
	И я выполняю код встроенного языка
	| 'Тест_СтрокаОшибка.ПроверитьРавенствоСтрокиНаЛожь(Контекст());' |

Сценарий: ПроверитьНеРавенствоСтрокиНаЛожь
	И я выполняю код встроенного языка
	| 'Тест_СтрокаОшибка.ПроверитьНеРавенствоСтрокиНаЛожь(Контекст());' |

Сценарий: ПроверитьВхождениеСтрокиНаЛожь
	И я выполняю код встроенного языка
	| 'Тест_СтрокаОшибка.ПроверитьВхождениеСтрокиНаЛожь(Контекст());' |