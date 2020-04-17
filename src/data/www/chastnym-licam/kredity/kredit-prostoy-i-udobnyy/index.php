<?
require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/header.php");
$APPLICATION->SetTitle("Кредит «Простой и удобный»");
?>
    <div class="row card-deck">
        <div class="col-12 col-sm">
            <div class="block-main-top">
                <div class="block-green"></div>
                <div class="block-samokat"></div>
                <div class="row">
                    <div class="col-8 col-md-8">
                        <h3>Быстрый кредит за 5 минут</h3>
                        <div class="row">
                            <div class="col-12 col-sm">
                                от <span class="big-text">9.9%</span><br/>
                                ставка на весь срок
                            </div>
                            <div class="col-12 col-sm">
                                до <span class="big-text">250</span> тыс. <span class="big-text">₽</span><br/>
                                максимальная сумма
                            </div>
                            <div class="col-12 col-sm doki ">
                                по <span class="big-text">1</span> документу<br/>
                                нужен только паспорт
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-sm block-btn">
                                <a href="#" class="btn-read">Оформить кредит</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <h3>Рассчитайте кредит</h3>
        </div>
    </div>
    <div class="row block-calc-slider-credit">
        <div class="col-12 col-lg-6">
            <div class="row block-slider">
                <div class="col-12">
                    <div class="row">
                        <div class="col-6 text-sum">Сумма кpедита</div>
                        <div class="col-6 text-right credit-value">
                            <span id="summ-amount" readonly></span><span class="valut">₽</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="credit_summ" id="summ-range-credit"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">51 000</div>
                        <div class="col-6 text-right">1 000 000 ₽</div>
                    </div>
                </div>
            </div>
            <div class="row block-slider">
                <div class="col-12">
                    <div class="row">
                        <div class="col-12 text-sum">Сpок кpедита, месяцев</div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="months"></div>
                            <div class="credit_srok" id="srok-range-credit"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-6">
            <div class="item-card text-center text-lg-left">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <span>Ежемесячный платеж:</span>
                        <div class="cMcIFR">
                            <button type="button" class="FbwbO"></button>
                            <div class=" irUjrl">
                                <input type="text" name="payment" id="payment" xs="75" md="100" class="guNFLw" inputmode="numeric" value="64 305"><span>₽</span>
                            </div>
                            <button type="button" class="dzVdrW"></button>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <span>Процентная ставка:</span>
                        <div>от <span class="procent">9.9%</span></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-6 block-btn">
                        <a href="#" class="btn-read">Оформить кредит</a>
                    </div>
                    <div class="col-12 col-lg-6">
                        <span>Расчеты носят информационно-справочный характер. Полная стоимость рассчитывается индивидуально.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>


<? require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/footer.php"); ?>