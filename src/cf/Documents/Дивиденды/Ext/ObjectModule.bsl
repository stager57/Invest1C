﻿
Процедура ОбработкаПроведения(Отказ, Режим)

	
	// регистр ДвижениеДСНаСчете Приход
	Если НаБрокерскийСчет Тогда
		Движения.ДвижениеДСНаСчете.Записывать = Истина;
		Движение = Движения.ДвижениеДСНаСчете.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.БрокерскийСчет = БрокерскийСчет;
		Движение.Сумма = Сумма;
		Движение.ЗаСчетПрибыли = Истина;
	КонецЕсли;
	
	// регистр Прибыль Приход
	Движения.Прибыль.Записывать = Истина;
	Движение = Движения.Прибыль.Добавить();
	Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
	Движение.Период = Дата;
	Движение.БрокерскийСчет = БрокерскийСчет;
	Движение.Сумма = Сумма;
	Движение.НалогУдержан = Истина;
	
	КонецПроцедуры

	Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
		
		Сумма =  Инструменты.Итог("Сумма");
		
	КонецПроцедуры
