﻿Функция ПолучитьКомиссииБрокраИБиржиПоСчету(БрокерскийСчет)  Экспорт
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
	"ВЫБРАТЬ
	|	БрокерскиеСчета.КомиссияБрокера КАК КомиссияБрокера,
	|	БрокерскиеСчета.КомиссияБиржи КАК КомиссияБиржи
	|ИЗ
	|	Справочник.БрокерскиеСчета КАК БрокерскиеСчета
	|ГДЕ
	|	БрокерскиеСчета.Ссылка = &Ссылка";
	
	Запрос.УстановитьПараметр("Ссылка", БрокерскийСчет);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	ВыборкаДетальныеЗаписи.Следующий();
	
	Комиссии = Новый Структура;
	Комиссии.Вставить("КомиссияБрокера",ВыборкаДетальныеЗаписи.КомиссияБрокера);
	Комиссии.Вставить("КомиссияБиржи", ВыборкаДетальныеЗаписи.КомиссияБиржи);
	Возврат Комиссии;
	
КонецФункции
