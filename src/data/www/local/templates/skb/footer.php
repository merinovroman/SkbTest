<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();?>

        </div>
    </div>
    <footer>
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
            </div>
            <div class="row">
                <div class="col-12 col-md-5">
                    <div class="row block-footer-menu">
                        <div class="col-12 col-sm footer-menu">
                            <p><a href="#">О банке</a></p>
                            <p><a href="#">Новости</a></p>
                            <p><a href="#">Акции и бонусы</a></p>
                        </div>
                        <div class="col-12 col-sm footer-menu">
                            <p><a href="#">Партнерам</a></p>
                            <p><a href="#">Вакансии</a></p>
                            <p><a href="#">Реквизиты</a></p>
                        </div>
                        <div class="col-12 col-sm footer-menu">
                            <p><a href="#">Пресс-центр</a></p>
                            <p><a href="#">Офисы и банкоматы</a></p>
                            <p><a href="#">Раскрытие информации</a></p>
                        </div>
                    </div>
                    <div class="row block-footer-modile-menu text-left">
                        <div class="col-6 col-sm footer-menu">
                            <p><a href="#">О банке</a></p>
                            <p><a href="#">Новости</a></p>
                            <p><a href="#">Акции и бонусы</a></p>
                            <p><a href="#">Партнерам</a></p>
                            <p><a href="#">Вакансии</a></p>
                        </div>
                        <div class="col-6 col-sm footer-menu">
                            <p><a href="#">Реквизиты</a></p>
                            <p><a href="#">Пресс-центр</a></p>
                            <p><a href="#">Офисы и банкоматы</a></p>
                            <p><a href="#">Раскрытие информации</a></p>
                        </div>
                    </div>
                </div>
                <div class="offset-md-1 col-12 col-md-3 text-left">
                    <div class="row block-curs-valut">
                        <div class="col-3 col-sm item-curs-valut">
                            <p></p>
                        </div>
                        <div class="col-3 col-sm item-curs-valut">
                            <p>Покупка</p>
                        </div>
                        <div class="col-3 col-sm item-curs-valut">
                            <p>Продажа</p>
                        </div>
                        <div class="col-3 col-sm item-curs-valut">
                            <p>ЦБ РФ</p>
                        </div>
                    </div>
                    <div class="row block-curs-valut-value">
                        <div class="col-3 col-sm">
                            <p>USD</p>
                        </div>
                        <div class="col-3 col-sm">
                            <p>63,04</p>
                        </div>
                        <div class="col-3 col-sm">
                            <p>65,22</p>
                        </div>
                        <div class="col-3 col-sm">
                            <p>65,22</p>
                        </div>
                    </div>
                    <div class="row block-curs-valut-value">
                        <div class="col-3 col-sm">
                            <p>EUR</p>
                        </div>
                        <div class="col-3 col-sm">
                            <p>68,89</p>
                        </div>
                        <div class="col-3 col-sm">
                            <p>72,34</p>
                        </div>
                        <div class="col-3 col-sm">
                            <p>72,34</p>
                        </div>
                    </div>

                </div>
                <div class="offset-md-1 col-12 col-md-2 text-left">
                    <div class="row free-russia">
                        <div class="col-12 col-sm">
                            Бесплатно по России
                        </div>
                    </div>
                    <div class="row free-phone">
                        <div class="col-12 col-sm">
                            8 800 1000 600
                        </div>
                    </div>
                    <div class="row call-back">
                        <div class="col-12 col-sm">
                            <a href="#">Обратная связь</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <footer class="bg-gradient">
        <div class="container">
            <div class="row text-left">
                <div class="col-12 col-md-5 copyright">
                    © СКБ-банк, 2019 Генеральная лицензия № 705<br /> Центрального банка Российской Федерации
                </div>
                <div class="offset-md-1 col-12 col-md-3 footer-social">
                    <?$APPLICATION->IncludeComponent("bitrix:main.include", ".default",
                        array(
                            "COMPONENT_TEMPLATE" => ".default",
                            "PATH" => SITE_TEMPLATE_PATH."/include/footer-social.php",
                            "AREA_FILE_SHOW" => "file",
                            "AREA_FILE_SUFFIX" => "",
                            "AREA_FILE_RECURSIVE" => "Y",
                            "EDIT_TEMPLATE" => "standard.php"
                        ),
                        false
                    );?>
                </div>
                <div class="offset-md-1 col-12 col-md-2 footer-sidebar">
                    <?$APPLICATION->IncludeComponent("bitrix:main.include", ".default",
                        array(
                            "COMPONENT_TEMPLATE" => ".default",
                            "PATH" => SITE_TEMPLATE_PATH."/include/footer-sidebar.php",
                            "AREA_FILE_SHOW" => "file",
                            "AREA_FILE_SUFFIX" => "",
                            "AREA_FILE_RECURSIVE" => "Y",
                            "EDIT_TEMPLATE" => "standard.php"
                        ),
                        false
                    );?>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>