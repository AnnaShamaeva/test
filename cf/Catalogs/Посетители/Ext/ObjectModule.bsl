﻿
Процедура ПередЗаписью(Отказ)
	
	ТелефонБезМаски	= СтрЗаменить(Телефон, " ", "");
	ТелефонБезМаски	= СтрЗаменить(ТелефонБезМаски, "(", "");
	ТелефонБезМаски	= СтрЗаменить(ТелефонБезМаски, ")", "");
	ТелефонБезМаски	= СтрЗаменить(ТелефонБезМаски, "-", "");
	
КонецПроцедуры
