﻿
&НаКлиенте
Процедура ИнструментыСуммаДивидендовПриИзменении(Элемент)
	
	ТекСтр = Элементы.Инструменты.ТекущиеДанные;
	ТекСтр.НДФЛ = ТекСтр.СуммаДивидендов * 13 /100;
	ИнструментыНДФЛПриИзменении(Элемент);
	
КонецПроцедуры

&НаКлиенте
Процедура ИнструментыНДФЛПриИзменении(Элемент)
	ТекСтр = Элементы.Инструменты.ТекущиеДанные;
	ТекСтр.Сумма = ТекСтр.СуммаДивидендов - ТекСтр.НДФЛ;
КонецПроцедуры
