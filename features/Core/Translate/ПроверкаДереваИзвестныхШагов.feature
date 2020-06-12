# language: ru
# encoding: utf-8
#parent uf:
@UF3_формирование_features
#parent ua:
@UA32_Создание_фиче_файлов

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@SingleCodeCoverage




Функционал: Проверка дерева известных шагов

Как разработчик
Я хочу чтобы я мог посмотреть дерево известных шагов
Чтобы я мог накликивать фичи используя известные шаги

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	
Сценарий: Проверка перехода к определению шага из дерева шагов 2
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПереходаКОпределениюШага2"
	И я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Имя процедуры' |
		| 'ЯРисуюРамкуВокругКартинки' |

	И я нажимаю на кнопку с именем 'ФормаОткрытьОпределениеШага'
	Тогда открылось окно 'Известные шаги:*'
	И в таблице "ДеревоШагов" я активизирую поле с именем "ДеревоШаговОписаниеШага"
	И я запоминаю значение таблицы "ДеревоШагов" поля с именем "ДеревоШаговОписаниеШага" как "ДеревоШаговОписаниеШага"
	И выражение внутреннего языка 'Найти($ДеревоШаговОписаниеШага$,"Рисует рамку вокруг картинки.") > 0' Истинно

		
	

Сценарий: Проверка перехода к определению шага из дерева шагов 1
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПереходаКОпределениюШага1"
	И я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Имя процедуры' |
		| 'ОткрылосьОкно' |

	И я нажимаю на кнопку с именем 'ФормаОткрытьОпределениеШага'
	Тогда открылось окно 'Известные шаги:*'
	И в таблице "ДеревоШагов" я активизирую поле с именем "ДеревоШаговОписаниеШага"
	И в таблице "ДеревоШагов" поле с именем "ДеревоШаговТипШага" имеет значение 'Тогда открылось окно "Заголовок окна"'

	


Сценарий: Проверка переведнных шагов в дереве известных шагов.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботыКеш"
	И я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке "Сервис"
	И     из выпадающего списка "Язык генератора Gherkin" я выбираю "English"

	И я перехожу к закладке "Работа с UI"

	И я нажимаю на кнопку "Добавить известный шаг"
	Тогда открылось окно "Известные шаги:*"

	И в таблице "ДеревоШагов" я разворачиваю строку:
		| 'Тип' |
		| 'UI'  |
		
	И в таблице "ДеревоШагов" я перехожу к строке:
		| 'Тип'    |
		| 'Tables' |
	И в таблице "ДеревоШагов" я разворачиваю текущую строку
	
	И в таблице "ДеревоШагов" я перехожу к строке:
		| 'Тип'              |
		| 'List Form Filter' |
	И в таблице "ДеревоШагов" я разворачиваю текущую строку
	
	#далее илеи переход к шагу, который экспортируется из фичи
	И в таблице "ДеревоШагов" я перехожу к строке:
		| 'Шаг'                                                  |
		| 'And I clear list form filter' |
	
	
Сценарий: Проверка дерева известных шагов
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой не подключая TestClient

	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботыКеш"
	И я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке "Работа с UI"
	И я нажимаю на кнопку "Добавить известный шаг"
	
	Тогда открылось окно "Известные шаги*"
	
	И в таблице "ДеревоШагов" я перехожу к строке:
	| 'Тип'             |
	| 'Встроенный язык' |
	И в таблице "ДеревоШагов" я разворачиваю текущую строку
	
	И в таблице "ДеревоШагов" я перехожу к строке:
		| 'Шаг'                                           |
		| 'Тогда я вызываю исключение "Текст исключения"' |
	