<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die(); ?>
<?
IncludeTemplateLangFile(__FILE__);
?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><? $APPLICATION->ShowTitle() ?></title>
    <link rel="apple-touch-icon" sizes="180x180" href="<?= SITE_TEMPLATE_PATH ?>/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?= SITE_TEMPLATE_PATH ?>/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?= SITE_TEMPLATE_PATH ?>/favicon-16x16.png">

    <link rel="stylesheet" type="text/css" href="<?= SITE_TEMPLATE_PATH ?>/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="<?= SITE_TEMPLATE_PATH ?>/css/global.css"/>
    <link rel="stylesheet" type="text/css" href="<?= SITE_TEMPLATE_PATH ?>/css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="<?= SITE_TEMPLATE_PATH ?>/css/font-awesome.min.css"/>
    <?/*?><link rel="stylesheet" type="text/css" href="<?= SITE_TEMPLATE_PATH ?>/common.css"/>
    <link rel="stylesheet" type="text/css" href="<?= SITE_TEMPLATE_PATH ?>/colors.css"/><?//*/?>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="<?= SITE_TEMPLATE_PATH ?>/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <? $APPLICATION->ShowHead(); ?>

</head>
<body class="banner-to-new">
    <div id="panel"><? $APPLICATION->ShowPanel(); ?></div>
    <div class="menu">
        <div class="menu-main">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-auto">
                        <?$APPLICATION->IncludeComponent("bitrix:main.include", ".default",
                            array(
                                "COMPONENT_TEMPLATE" => ".default",
                                "PATH" => SITE_TEMPLATE_PATH."/include/logo.php",
                                "AREA_FILE_SHOW" => "file",
                                "AREA_FILE_SUFFIX" => "",
                                "AREA_FILE_RECURSIVE" => "Y",
                                "EDIT_TEMPLATE" => "standard.php"
                            ),
                            false
                        );?>
                    </div>
                    <div class="col-12 col-md-auto">
                        <a class="menu-item active" href="/chastnym-licam">Частным лицам</a>
                    </div>
                    <div class="col-12 col-md col-lg-auto">
                        <a class="menu-item" href="/predprinimatelyam-i-biznesu">Бизнесу</a>
                    </div>
                    <div class="col-12 col-md-auto d-none d-lg-inline">
                        <a class="menu-item" href="/o-banke">О банке</a></div>
                    <div class="col-12 col-md text-md-right d-none d-lg-inline">
                        <a class="menu-item" href="/atms">Офисы и банкоматы</a></div>
                    <div class="col-12 col-md-auto">
                        <a class="menu-item city-select" href="#" data-toggle="modal" data-target="#modalCitiesList">
                            <i class="fa fa-location-arrow"></i>
                            Выберите город
                        </a>
                    </div>
                    <div class="col-12 col-md-auto">
                        <a href="#search" class="menu-item" id="search">
                            <i class="fa fa-search"></i> <span class="d-inline d-md-none">Поиск</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-additional">
            <div class="container">
                <div class="row personal">
                    <div class="col-12 col-md-auto">
                        <a class="menu-item active" href="/chastnym-licam/kredity">Кредиты</a>
                        <a class="menu-item" href="/chastnym-licam/kredity/ipoteka">Ипотека</a>
                        <a class="menu-item" href="/chastnym-licam/vklady">Вклады</a>
                        <a class="menu-item" href="/chastnym-licam/karty">Карты</a>
                        <a class="menu-item" href="/chastnym-licam/premialnoe-obsluzivanie">Премиальное обслуживание</a>
                        <a class="menu-item" href="/offers">Акции</a></div>
                    <div class="col px-lg-0">
                        <nobr>
                            <a class="menu-item menu-more" data-toggle="collapse" href="#morePersonal" role="button"
                               aria-expanded="false" aria-controls="morePersonal">Ещё <i class="fa fa-angle-down"></i>
                            </a>
                        </nobr>
                    </div>
                    <div class="col-auto">
                        <a href="https://ib.skbbank.ru/login" class="btn btn-coral-white btn-menu" target="_blank">Интернет-банк</a>
                    </div>
                </div>
                <div class="row search" style="display:none;">
                    <div class="col-12">
                        <form class="form-search_mobile" action="/search" method="get">
                            <input type="text" name="q" value="" placeholder="Найти">
                            <i class="fa fa-search"></i>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-mobile">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <?$APPLICATION->IncludeComponent("bitrix:main.include", ".default",
                            array(
                                "COMPONENT_TEMPLATE" => ".default",
                                "PATH" => SITE_TEMPLATE_PATH."/include/logo.php",
                                "AREA_FILE_SHOW" => "file",
                                "AREA_FILE_SUFFIX" => "",
                                "AREA_FILE_RECURSIVE" => "Y",
                                "EDIT_TEMPLATE" => "standard.php"
                            ),
                            false
                        );?>
                    </div>
                    <div class="col-auto">
                        <a data-toggle="collapse" href="#mobile" role="button" aria-expanded="false" aria-controls="mobile" class="collapsed"><i class="fa fa-bars"></i></a>
                    </div>
                </div>
                <div class="collapse" id="mobile" style="">
                    <div class="row">
                        <div class="col-12">
                            <a class="menu-item active" data-toggle="collapse" href="#mobilePersonal" role="button" aria-expanded="false" aria-controls="mobilePersonal">Частным лицам
                                <div class="text-right float-right">
                                    <i class="fa fa-angle-down"></i>
                                </div>
                            </a>
                        </div>
                        <div class="collapse" id="mobilePersonal">
                            <div class="card card-body">
                                <div class="col-12">
                                    <a class="menu-item" href="/chastnym-licam/kredity">Кредиты</a>
                                    <a class="menu-item" href="/chastnym-licam/kredity/ipoteka">Ипотека</a>
                                    <a class="menu-item" href="/chastnym-licam/vklady">Вклады</a>
                                    <a class="menu-item" href="/chastnym-licam/karty">Банковские карты</a>
                                    <a class="menu-item" href="/chastnym-licam/strahovanie">Страхование</a>
                                    <a class="menu-item" href="/chastnym-licam/biometric">Биометрическая идентификация</a>
                                    <a class="menu-item" href="/chastnym-licam/karty/kreditnaya-karta-new">Кредитная карта</a>
                                    <a class="menu-item" href="http://elite.skbbank.ru/">Премиальное обслуживание</a>
                                    <a class="menu-item" href="/offers">Акции</a>
                                    <a class="menu-item" href="https://ib.skbbank.ru/">Интернет-банк</a>
                                    <a class="menu-item" href="https://p2p.skbbank.ru/">Переводы с карты на карту</a>
                                    <a class="menu-item" href="/chastnym-licam/denezhnie-perevody">Денежные переводы</a>
                                    <a class="menu-item" href="/chastnym-licam/oplata-uslug">Оплата услуг</a>
                                    <a class="menu-item" href="/chastnym-licam/blagotvoritelnost">Благотворительность</a>
                                    <a class="menu-item" href="/chastnym-licam/samsung-pay">Samsung Pay</a>
                                    <a class="menu-item" href="/chastnym-licam/google-pay">Google Pay</a>
                                    <a class="menu-item" href="/chastnym-licam/apple-pay">Apple Pay</a>
                                    <a class="menu-item" href="/chastnym-licam/arenda-seifovih-yacheek">Аренда сейфовых ячеек</a>
                                    <a class="menu-item" href="/chastnym-licam/operacii-s-inostrannoi-valyutoi">Операции с иностранной валютой</a>
                                    <a class="menu-item" href="https://cdn.skbbank.ru/files/o%20banke/%D0%94%D0%BE%D0%B3%D0%BE%D0%B2%D0%BE%D1%80-%D0%BE%D1%84%D0%B5%D1%80%D1%82%D0%B0.pdf">Партнерам</a><a class="menu-item" href="/kursy-valyut">Курсы валют</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <a class="menu-item" data-toggle="collapse" href="#mobileBusiness" role="button" aria-expanded="false" aria-controls="mobileBusiness">Бизнесу
                                <div class="text-right float-right">
                                    <i class="fa fa-angle-down"></i>
                                </div>
                            </a>
                        </div>
                        <div class="collapse" id="mobileBusiness">
                            <div class="card card-body">
                                <div class="col-12">
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/rko">Расчётно-кассовое обслуживание</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/zarplatnyi-proekt">Зарплатный проект</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/deposity-i-vekselya">Депозиты и векселя</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/kreditovanie">Кредитование</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/valutn_kontr">Валютный контроль</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/operacii-s-inostrannoi-valyutoy">Операции с иностранной валютой</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/mezhdunarodnye-raschety">Международные расчёты</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/fast-payments">Система быстрых платежей</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/torgovyj-ekvajring">Торговый эквайринг</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/inkassaciya">Инкассация</a>
                                    <a class="menu-item" href="/predprinimatelyam-i-biznesu/arenda-sejfovyh-yacheek">Аренда сейфовых ячеек</a>
                                    <a class="menu-item" href="https://delo.ru/?ldg=site&amp;utm_source=menu&amp;utm_medium=button">ДелоБанк</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <a class="menu-item" href="/o-banke">О банке</a>
                        </div>
                        <div class="col-12">
                            <a class="menu-item" href="/atms">Офисы и банкоматы</a>
                        </div>
                        <div class="col-12">
                            <a class="menu-item city-select" href="#" data-toggle="modal" data-target="#modalCitiesList">
                                Выберите город
                                <div class="text-right float-right">
                                    <i class="fa fa-location-arrow"></i>
                                </div>
                            </a>
                        </div>
                        <div class="col-12">
                            <div class="menu-item">
                                <form class="form-search_mobile" action="/search" method="get">
                                    <input type="text" name="q" value="" placeholder="Поиск по сайту">
                                    <div class="text-right float-right">
                                        <i class="fa fa-search"></i>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-12 text-center">
                            <div class="menu-item">
                                <a href="https://ib.skbbank.ru/login" class="btn btn-coral-white btn-menu" target="_blank">Интернет-банк</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <?$APPLICATION->IncludeComponent(
    "bitrix:breadcrumb",
    ".default",
            array(
                "START_FROM" => "1",
                "PATH" => "",
                "SITE_ID" => "s1",
                "COMPONENT_TEMPLATE" => ".default"
            ),
            false
        );?>
    </div>

    <div class="products">
        <div class="container">
            <h1 class="green mt-5"><?$APPLICATION->ShowTitle(false);?></h1>
