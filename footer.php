<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die(); ?>
    <!--	if ($APPLICATION->GetCurPage(true)!='/index.php') {-->
<? if (false) {
    include "footer_old.php";
} else {
    ?>
    <? if ($GLOBALS["IS_HOME"]) { ?>
        <? if (!$GLOBALS["ALT_LAYOUT"]) { ?>
            <? $APPLICATION->ShowViewContent('after_content'); ?>
            </div>
        <? } ?>
        </div>
        </div>
        </div>
    <? } ?>
    </div>
    <!--div class="footer-wrapper"-->
    <footer>
        <div class="footer-contact-wrap">
            <div class="container footer-contact">
                <div class="row">
                    <div class="col-12 col-sm-6 col-md-3">
                        <h3>Контакты</h3>
                        <div>
                            <? $APPLICATION->IncludeComponent(
                                "bitrix:menu",
                                "social",
                                array(
                                    "ROOT_MENU_TYPE" => "social",
                                    "MAX_LEVEL" => "1",
                                    "USE_EXT" => "N",
                                    "MENU_CACHE_TYPE" => "A",
                                    "MENU_CACHE_TIME" => "3600",
                                    "MENU_CACHE_USE_GROUPS" => "N",
                                    "MENU_CACHE_GET_VARS" => array(),
                                    "CHILD_MENU_TYPE" => "",
                                    "DELAY" => "N",
                                    "ALLOW_MULTI_SELECT" => "N"
                                ),
                                false
                            ); ?>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3">
                        <p>Главный корпус</p>
                        <a href="/contacts/">105064, Москва, ул. Казакова, 15</a>
                        <p>E-mail</p>
                        <a href="mailto:info@guz.ru">info@guz.ru</a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <p>Ректорат</p>
                        <a href="tel:+74952613146">+7 495 261–31–46</a>
                        <p>ОДОУ</p>
                        <a href="tel:+74992619545">+7 499 261–95–45</a>
                        <p>Планово-экономическое управление</p>
                        <a href="tel:+74992676109">+7 499 267–61–09</a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <p>Центральная приёмная комиссия</p>
                        <a href="/contacts/">105064, Москва, ул. Казакова, 15</a>
                        <p>Телефоны приемной комиссии</p>
                        <a href="tel:+79263173787">+7 926 317–37–87</a>
                        <a href="tel:+74992615979">+7 499 261–59–79</a>
                        <a href="tel:+79154132259">+7 915 413–22–59</a>
                    </div>
                    <? /*<div class="col-12 col-sm-3">
			<?$GLOBALS["BOTTOM_CONTACTS_FILTER"] = array("!PROPERTY_MAIN" => false);?>
                <?$APPLICATION->IncludeComponent("bitrix:news.list", "bottom_contacts", Array(
                    "IBLOCK_TYPE" => "departments",	// Тип информационного блока (используется только для проверки)
                    "IBLOCK_ID" => "5",	// Код информационного блока
                    "NEWS_COUNT" => "1",	// Количество новостей на странице
                    "SORT_BY1" => "ACTIVE_FROM",	// Поле для первой сортировки новостей
                    "SORT_ORDER1" => "DESC",	// Направление для первой сортировки новостей
                    "SORT_BY2" => "SORT",	// Поле для второй сортировки новостей
                    "SORT_ORDER2" => "ASC",	// Направление для второй сортировки новостей
                    "FILTER_NAME" => "BOTTOM_CONTACTS_FILTER",	// Фильтр
                    "FIELD_CODE" => array(	// Поля
                                              0 => "",
                                              1 => "",
                    ),
                    "PROPERTY_CODE" => array(	// Свойства
                                                 0 => "EMAIL",
                                                 1 => "ADDRESS",
                                                 2 => "CITY",
                                                 3 => "OPENING",
                                                 4 => "SITE",
                                                 5 => "PHONE",
                                                 6 => "",
                    ),
                    "CHECK_DATES" => "Y",	// Показывать только активные на данный момент элементы
                    "DETAIL_URL" => "",	// URL страницы детального просмотра (по умолчанию - из настроек инфоблока)
                    "AJAX_MODE" => "N",	// Включить режим AJAX
                    "AJAX_OPTION_JUMP" => "N",	// Включить прокрутку к началу компонента
                    "AJAX_OPTION_STYLE" => "Y",	// Включить подгрузку стилей
                    "AJAX_OPTION_HISTORY" => "N",	// Включить эмуляцию навигации браузера
                    "CACHE_TYPE" => "A",	// Тип кеширования
                    "CACHE_TIME" => "36000000",	// Время кеширования (сек.)
                    "CACHE_FILTER" => "N",	// Кешировать при установленном фильтре
                    "CACHE_GROUPS" => "N",	// Учитывать права доступа
                    "PREVIEW_TRUNCATE_LEN" => "",	// Максимальная длина анонса для вывода (только для типа текст)
                    "ACTIVE_DATE_FORMAT" => "d.m.Y",	// Формат показа даты
                    "SET_TITLE" => "N",	// Устанавливать заголовок страницы
                    "SET_BROWSER_TITLE" => "N",	// Устанавливать заголовок окна браузера
                    "SET_META_KEYWORDS" => "N",	// Устанавливать ключевые слова страницы
                    "SET_META_DESCRIPTION" => "N",	// Устанавливать описание страницы
                    "SET_STATUS_404" => "N",	// Устанавливать статус 404, если не найдены элемент или раздел
                    "INCLUDE_IBLOCK_INTO_CHAIN" => "N",	// Включать инфоблок в цепочку навигации
                    "ADD_SECTIONS_CHAIN" => "N",	// Включать раздел в цепочку навигации
                    "HIDE_LINK_WHEN_NO_DETAIL" => "N",	// Скрывать ссылку, если нет детального описания
                    "PARENT_SECTION" => "",	// ID раздела
                    "PARENT_SECTION_CODE" => "",	// Код раздела
                    "INCLUDE_SUBSECTIONS" => "N",	// Показывать элементы подразделов раздела
                    "DISPLAY_DATE" => "N",
                    "DISPLAY_NAME" => "N",
                    "DISPLAY_PICTURE" => "N",
                    "DISPLAY_PREVIEW_TEXT" => "N",
                    "PAGER_TEMPLATE" => ".default",	// Шаблон постраничной навигации
                    "DISPLAY_TOP_PAGER" => "N",	// Выводить над списком
                    "DISPLAY_BOTTOM_PAGER" => "N",	// Выводить под списком
                    "PAGER_TITLE" => "Новости",	// Название категорий
                    "PAGER_SHOW_ALWAYS" => "N",	// Выводить всегда
                    "PAGER_DESC_NUMBERING" => "N",	// Использовать обратную навигацию
                    "PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",	// Время кеширования страниц для обратной навигации
                    "PAGER_SHOW_ALL" => "N",	// Показывать ссылку "Все"
                    "AJAX_OPTION_ADDITIONAL" => "",	// Дополнительный идентификатор
                ),
                    false
                );?>
            </div>*/ ?>

                </div>
            </div>
        </div>
        <div class="footer-link-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-12 footer-link">
                        <a href="#">Карта сайта</a>
                        <a href="#">Задать вопрос</a>
                        <a href="#">Контакты</a>
                        <a href="#">Версия для слабовидящих</a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3 footer-link-big">
                        <h3>Поступающим</h3>
                        <a href="#">Приемная комиссия</a>
                        <a href="#">Бакалавриат</a>
                        <a href="#">Магистратура</a>
                        <a href="#">Аспирантура</a>
                        <a href="#">Образовательные программы</a>
                        <a href="#">Дополнительное образование</a>
                        <a href="#">Дни открытых дверей</a>
                        <a href="#">Олимпиада школьников</a>
                        <a href="#">Подготовительные курсы</a>
                        <a href="#">История университета</a>
                        <a href="#">Калькулятор ЕГЭ</a>
                        <a href="#">Актуальная информация для иностранных граждан</a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3 footer-link-big">
                        <h3>Студентам</h3>
                        <a href="#">Расписание занятий</a>
                        <a href="#">Вакантные бюджетные места</a>
                        <a href="#">Стоимость обучения</a>
                        <a href="#">Договоры на обучение</a>
                        <a href="#">Медицинский пункт</a>
                        <a href="#">Профком студента</a>
                        <a href="#">Трудоустройство выпускников</a>
                        <a href="#">Информация по вакантным местам для выпускников</a>
                        <a href="#">Общежития</a>
                        <a href="#">Контингент обучающихся</a>
                        <a href="#">Совет обучающихся</a>
                        <a href="#">Заочная форма обучения</a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3 footer-link-big">
                        <h3>Сотрудникам</h3>
                        <a href="#">Методические материалы</a>
                        <a href="#">Вакансии и объявления по конкурсу</a>
                        <a href="#">Бланки, шаблоны форм</a>
                        <a href="#">Локальные нормативные акты</a>
                        <a href="#">Антиплагиат</a>
                        <a href="#">Эффективный контракт</a>
                        <a href="#">Работа с сайтом</a>
                        <a href="#">Рекомендации по использованию ДО</a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3 footer-link-big">
                        <h3>Сведения об образовательной организации</h3>
                        <a href="#">Основные сведения</a>
                        <a href="#">Структура и органы управления образовательной организацией</a>
                        <a href="#">Документы</a>
                        <a href="#">Образование</a>
                        <a href="#">Образовательные стандарты</a>
                        <a href="#">Руководство. Педагогический (научно-педагогический) состав</a>
                        <a href="#">Материально-техническое обеспечение и оснащённость образовательного процесса</a>
                        <a href="#">Стипендии и иные виды материальной поддержки</a>
                        <a href="#">Платные образовательные услуги</a>
                        <a href="#">Финансово-хозяйственная деятельность</a>
                        <a href="#">Вакантные места для приема (перевода)</a>
                        <a href="#">Доступная среда</a>
                        <a href="#">Международное сотрудничество</a>
                    </div>

                    <? /*$APPLICATION->IncludeComponent(
	"bitrix:menu", 
	"bottom", 
	array(
		"ROOT_MENU_TYPE" => "top",
		"MAX_LEVEL" => "2",
		"USE_EXT" => "N",
		"MENU_CACHE_TYPE" => "A",
		"MENU_CACHE_TIME" => "3600",
		"MENU_CACHE_USE_GROUPS" => "N",
		"MENU_CACHE_GET_VARS" => array(
		),
		"CHILD_MENU_TYPE" => "right",
		"DELAY" => "N",
		"ALLOW_MULTI_SELECT" => "N",
		"COMPONENT_TEMPLATE" => "bottom",
		"MENU_THEME" => "site",
		"COMPOSITE_FRAME_MODE" => "A",
		"COMPOSITE_FRAME_TYPE" => "AUTO"
	),
	false
);*/ ?>
                </div>
            </div>
        </div>
        <div class="footer-copy-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="col-12 footer-copy">
                            <div class="">© Государственный университет по землеустройству, 2022</div>
                            <div class="">
                                <a href="/sotrudnichestvo/svyaz-s-obshchestvennostyu">Пресс-центр</a>
                                <a href="">Служба технической поддержки</a>
                                <a href="/applicants/the_admissions_committee/">Приемная комиссия</a>
                                <a href="/userconsent/?data=eyJpZCI6IjEiLCJyZXBsYWNlIjpbXX0%3D&sec=NDk0MzdmZWMyZmVhNmZmY2U4NmMzNTE5MWZmNGI0ZGI1MmFjMDhiNTM5MjFjMmM3ZTI0NmYxMTJiNDUzYTY1ZQ%3D%3D">Политика
                                    конфиденциальности</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!--/div> <!-- .footer-wrapper -->
    <div class="mobile-nav-wrapper">
        <div class="mobile-nav">
        </div>
    </div>
    </body>
    </html>
<? } ?>