# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

Функционал: Обработка оповещений 1
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Обработка оповещения ЗагрузитьСценарий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
		|'   ПараметрыОповещения = Новый Структура;'|
		|'   ПараметрыОповещения.Вставить("ПутьКСценариям",Объект.КаталогИнструментов + "/features/Support/Templates/ПростаяФича/ПростаяФича01.feature");'|
		|'   ПараметрыОповещения.Вставить("КаталогПроекта",Объект.КаталогИнструментов + "/features/Support/Templates/ПростаяФича");'|
		|'   ПараметрыОповещения.Вставить("ИдОповещения",ТекущаяДата());'|
		|'   ПараметрыОповещения.Вставить("СТекущегоШага",Ложь);'|
		|'   ПараметрыОповещения.Вставить("НомерСтрокиДляЗапускаСТекущегоШагаСценария",-1);'|
		|'   Оповестить("ЗагрузитьСценарий",ПараметрыОповещения);'|
		|''|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	
	И у элемента с именем "ФлагСценарииЗагружены" я жду значения "Да" в течение 60 секунд

	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус' |
		| 'ПростаяФича01.feature'                                               | ''       |
		| 'ПростаяФича01'                                                       | ''       |
		| 'ПростаяФича01'                                                       | ''       |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | ''       |





Сценарий: Обработка оповещения ВыполнитьСценарий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
		|'   ПараметрыОповещения = Новый Структура;'|
		|'   ПараметрыОповещения.Вставить("ПутьКСценариям",Объект.КаталогИнструментов + "/features/Support/Templates/ПростаяФича/ПростаяФича01.feature");'|
		|'   ПараметрыОповещения.Вставить("КаталогПроекта",Объект.КаталогИнструментов + "/features/Support/Templates/ПростаяФича");'|
		|'   ПараметрыОповещения.Вставить("ИдОповещения",ТекущаяДата());'|
		|'   ПараметрыОповещения.Вставить("СТекущегоШага",Ложь);'|
		|'   ПараметрыОповещения.Вставить("НомерСтрокиДляЗапускаСТекущегоШагаСценария",-1);'|
		|'   Оповестить("ВыполнитьСценарий",ПараметрыОповещения);'|
		|''|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	
	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ПростаяФича01.feature'                                               | ''        |
		| 'ПростаяФича01'                                                       | ''        |
		| 'ПростаяФича01'                                                       | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |


