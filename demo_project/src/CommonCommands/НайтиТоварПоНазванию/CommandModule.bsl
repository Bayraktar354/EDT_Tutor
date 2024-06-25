&НаКлиенте
АСИНХ Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	НазваниеТовара = Ждать ВвестиСтрокуАсинх("", "Введите название товара");
	
	Если ПроверитьСуществованиеТовара(НазваниеТовара) Тогда
		ТекстСообщения = СтрШаблон("Товар %1 найден !", НазваниеТовара);	
	Иначе
		ТекстСообщения = СтрШаблон("Товар %1 не найден !", НазваниеТовара);	
	КонецЕсли;
	
	Сообщить(ТекстСообщения);
	//коммент для репо
		
КонецПроцедуры

Функция ПроверитьСуществованиеТовара(НазваниеТовара)
	ТоварСуществует = Справочники.Товары.ПроверитьСуществованиеПоНазванию(НазваниеТовара);
	Возврат ТоварСуществует;
КонецФункции