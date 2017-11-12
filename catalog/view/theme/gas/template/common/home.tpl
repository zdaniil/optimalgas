<?php echo $header; ?>
<?php echo $content_top; ?>
        <main>
            <div id="content">
                <div class="container">
<?php echo $column_left; ?>
                    <div class="goods-block">
                        <ul class="tab-nav">
                            <li><a href="#" class="tab-selector active" data-tab="#tab1">Популярные</a></li>
                            <li><a href="#" class="tab-selector" data-tab="#tab2">Новинки</a></li>
                            <li><a href="#" class="tab-selector" data-tab="#tab3">Акции</a></li>
                        </ul>
                        <div class="tab-content">
                           <?php echo $content_bottom; ?>
                        </div>
                    </div>
                </div>
                <div class="content-block-dark">
                    <div class="container">
                        <div class="text-block">
                            <p>Мы рады приветствовать Вас на нашем сайте и с удовольствием поможем Вам в решении любых вопросов, связанных с покупкой, установкой и ремонтом газобалонного оборудования для вашего автомобиля
                            </p>
                            <a href="#" class="btn btn-primary">Связаться с нами</a>
                        </div>
                    </div>
                    <div class="image-side" style="background-image: url('catalog/view/theme/gas/build/images/img2.png')">
                        <!-- <div class="divider">
                    <div class="triangle"></div>
                </div>  -->
                    </div>
                </div>
                <div class="container">
                    <div class="content-block-light">
                        <div class="block-column">
                            <div class="icon-holder">
                                <i class="icon-shop"></i>
                            </div>
                            <span>Оптовая<br> и розничная<br> продажа ГБО</span>
                        </div>
                        <div class="block-column">
                            <div class="icon-holder">
                                <i class="icon-profi"></i>
                            </div>
                            <span>Профессиональная<br>
                    установка ГБО<br>
                    на любое авто</span>
                        </div>
                        <div class="block-column">
                            <div class="icon-holder">
                                <i class="icon-hummer"></i>
                            </div>
                            <span>Обслуживание,<br>
                    ремонт и<br>
                    диагностика ГБО</span>
                        </div>
                        <div class="block-column">
                            <div class="icon-holder">
                                <i class="icon-h-help"></i>
                            </div>
                            <span>Консультация<br>
                    и подбор ГБО,<br>
                    техподдержка</span>
                        </div>
                    </div>
                </div>
                <div class="content-block-dark">
                    <div class="container">
                        <div class="text-block text-block-half">
                            <div class="text-block-row">
                                <i class="icon-check"></i>
                                <p>низкие розничные цены</p>
                            </div>
                            <div class="text-block-row">
                                <i class="icon-check"></i>
                                <p>выгодные предложения для установщиков</p>
                            </div>
                            <div class="text-block-row">
                                <i class="icon-check"></i>
                                <p>доставка без предоплаты</p>
                            </div>
                            <div class="text-block-row">
                                <i class="icon-check"></i>
                                <p>гарантия на все товары от 1 до 3 лет</p>
                            </div>
                            <div class="text-block-row">
                                <i class="icon-check"></i>
                                <p>10 000 довольных клиентов</p>
                            </div>
                        </div>
                    </div>
                    <div class="image-side image-side-half" style="background-image: url('catalog/view/theme/gas/build/images/img3.png')">
                        <!-- <div class="divider">
                    <div class="triangle"></div>
                </div>  -->
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
                    <div class="opacity-layer"></div>
                </div>
                <div class="container contact-info">
                    <div class="contact-info-holder">
                        <h5>Контакты</h5>
                        <ul class="map-contact-list">
                            <li>
                                <i class="icon-marker"></i>
                                <address><?php echo $address; ?></address>
                            </li>
                            <li class="column">
                                <i class="icon-tel-footer"></i>
                                <a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a>,&nbsp;
                                <a href="tel:<?php echo $fax; ?>"><?php echo $fax; ?></a>,&nbsp;
                                <a href="tel:0636642486">063-664-24-86</a>
                            </li>
                            <li><i class="icon-envelope"></i><a href="mailto:&#111;&#112;&#116;&#105;&#109;&#097;&#108;&#103;&#097;&#115;&#064;&#109;&#097;&#105;&#108;&#046;&#114;&#117;">&#111;&#112;&#116;&#105;&#109;&#097;&#108;&#103;&#097;&#115;&#064;&#109;&#097;&#105;&#108;&#046;&#114;&#117;</a></li>
                        </ul>
                        <a href="#" class="btn btn-primary">Консультация специалиста</a>
                    </div>
                </div>
            </div>
        </main>
<?php echo $footer; ?>