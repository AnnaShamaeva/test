﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
 	Элементы.Длительность.СписокВыбора.ЗагрузитьЗначения(ПолучитьМассивВидовДлительности());    	
	
КонецПроцедуры

&НаКлиенте
Процедура Добавить(Команда)
	
	Отказ	= Ложь;
	
	Если Не ЗначениеЗаполнено(Посетитель) Тогда
		Сообщить("Не выбран посетитель");
		Отказ	= Истина;
	КонецЕсли;
	
	Если Не ЗначениеЗаполнено(ВидДлительности) Тогда
		Сообщить("Не выбран вид длительности");
		Отказ	= Истина;
	КонецЕсли; 
	
	Если Отказ Тогда
		Возврат;
	КонецЕсли;	
	
	Закрыть(Новый Структура("Посетитель, ВидДлительности", Посетитель, ВидДлительности));
	
КонецПроцедуры

&НаСервере
Функция ПолучитьМассивВидовДлительности()

	Запрос	= Новый Запрос;
	Запрос.Текст	= "ВЫБРАТЬ
	            	  |	ВидыДлительностей.Ссылка КАК Ссылка,
	            	  |	ВидыДлительностей.ДлительностьВМинутах КАК ДлительностьВМинутах,
	            	  |	ВидыДлительностей.Бессрочно КАК Бессрочно
	            	  |ИЗ
	            	  |	Справочник.ВидыДлительностей КАК ВидыДлительностей
	            	  |ГДЕ
	            	  |	НЕ ВидыДлительностей.ПометкаУдаления
	            	  |	И ВидыДлительностей.Активность";
	
	Возврат Запрос.Выполнить().Выгрузить().ВыгрузитьКолонку("Ссылка");
	
КонецФункции



