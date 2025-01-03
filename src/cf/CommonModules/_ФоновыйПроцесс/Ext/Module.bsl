﻿Процедура ЗапуститьОбработку(ИмяФайла,Идентификатор = Неопределено) Экспорт
	Если ПолучитьТекущийСеансИнформационнойБазы().ПолучитьФоновоеЗадание() = Неопределено Тогда
		Параметры = Новый Массив; 
		Параметры.Добавить(ИмяФайла);
		Идентификатор = ФоновыеЗадания.Выполнить("_ФоновыйПроцесс.ЗапуститьОбработку",Параметры,,"Запуск в фоновом процессе").УникальныйИдентификатор;
	Иначе
		
		Выполнить("ЗагрузкаДанных.ЗагрузитьИзФайла(ИмяФайла)"); 
		Сообщить("Загрузка завершена");
	КонецЕсли;
	
КонецПроцедуры
