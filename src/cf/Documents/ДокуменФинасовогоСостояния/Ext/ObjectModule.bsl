﻿
Процедура ОбработкаПроведения(Отказ, РежимПроведения)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	// регистр СведенияОбОстатках
	Движения.СведенияОбОстатках.Записывать = Истина;
	Для Каждого ТекСтрокаТекущийОстаок Из ТекущийОстаок Цикл
		Движение = Движения.СведенияОбОстатках.Добавить();
		Движение.Период = Дата;
		Движение.ОбъектФинансовогоСостояния = ТекСтрокаТекущийОстаок.ОбъектФиксацииОстатка;
		Движение.Сумма = ТекСтрокаТекущийОстаок.Сумма;
	КонецЦикла;

	// регистр СведенияОЗадолженностях
	Движения.СведенияОЗадолженностях.Записывать = Истина;
	Для Каждого ТекСтрокаТекущаяЗадолженность Из ТекущаяЗадолженность Цикл
		Движение = Движения.СведенияОЗадолженностях.Добавить();
		Движение.Период = Дата;
		Движение.ОбъектФинансовогоСостояния = ТекСтрокаТекущаяЗадолженность.ОбъектФиксацииЗадолженности;
		Движение.Сумма = ТекСтрокаТекущаяЗадолженность.ИтоговаяСумма;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры
