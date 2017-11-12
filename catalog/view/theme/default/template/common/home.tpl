<?php echo $header; ?>
<?php echo $content_top; ?>
        <main>
            <div id="content">
                <div class="container">
<div class="bread-crumbs bread-crumbs-off"></div>
<?php echo $column_left; ?>
                    <div class="goods-block">
                        <ul class="tab-nav">
                            <li><a href="#" class="tab-selector" data-tab="#tab1">О нас</a></li>
                            <li><a href="#" class="tab-selector" data-tab="#tab2">Популярное</a></li>
                            <li><a href="#" class="tab-selector" data-tab="#tab3">Новинки</a></li>
                            <li><a href="#" class="tab-selector" data-tab="#tab4">Акции</a></li>
                        </ul>
                        <div class="tab-content">
                           <?php echo $content_bottom; ?>
                        </div>
                    </div>
                </div>
                <div class="container bg-container">
                    <div class="bg-content-block" style="background-image: url('catalog/view/theme/gas/build/images/img4.png'">
                        <div class="content-conteiner">
                            <span class="block-name">Доставка и оплата</span>
                            <div class="bg-content-block-row">
                                <i class="icon-delivery"></i>
                                <p>Доставка по Харькову бесплатная от 6000 грн. До 6000грн 50 грн за доставку.</p>
                            </div>
                            <div class="bg-content-block-row">
                                <i class="icon-ukraine"></i>
                                <p>Доставка по всей территории Украины Новой Почтой</p>
                            </div>
                            <div class="bg-content-block-row">
                                <i class="icon-self-pickup"></i>
                                <p>Самовывоз в Харькове по адресу ул. Шевченка 238 </p>
                            </div>
                            <div class="bg-content-block-row">
                                <i class="icon-pay"></i>
                                <p>Оплата товара осуществляется после его получения в одном из отделений Новой Почты</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="map-box">
                    <div class="map">
                        <div class="map-canvas" data-markers="catalog/view/theme/gas/build/inc/markers.json"></div>
                    </div>
                </div>
            </div>
        </main>
<?php echo $footer; ?>