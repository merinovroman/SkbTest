<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die(); ?>
<?
IncludeTemplateLangFile(__FILE__);
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
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



    <? $APPLICATION->ShowHead(); ?>

</head>
<body class="banner-to-new">
    <div id="panel"><? $APPLICATION->ShowPanel(); ?></div>
    <div class="menu">
        <div class="menu-main">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-auto">
                        <a href="/chastnym-licam">
                            <div class="logo"></div>
                        </a>
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
                            Выберите город </a>
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
