 <footer id="footer">
            <div class="container ">
                <div class="column-holder">
                    <section class="footer-column">
                        <h5>Наша продукция</h5>
                        <nav>
                            <ul class="nav-list">
                                <li><a href="#">Оборудование 4-го поколения</a></li>
                                <li><a href="#">Оборудование 2-го поколения</a></li>
                                <li><a href="#">Баллоны, крепление баллонов</a></li>
                                <li><a href="#">Форсунки</a></li>
                                <li><a href="#">Фильтры</a></li>
                                <li><a href="#">Ремкоплекты</a></li>
                                <li><a href="#">Шланги и трубки </a></li>
                                <li><a href="#">Электроклапаны бензина, газа</a></li>
                            </ul>
                        </nav>
                    </section>
                    <?php if ($informations) { ?>
                    <section class="footer-column">
                        <h5><?php echo $text_information; ?></h5>
                        <nav>
                            <ul class="nav-list">
                            <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
                            </ul>
                        </nav>
                    </section>
                    <?php } ?>
                    <section class="footer-column">
                        <h5>Контакты</h5>
                        <nav>
                            <ul class="nav-list contact-list">
                                <li>
                                    <i class="icon-marker"></i>
                                    <address>г. Харьков, ул. Шевченко 238</address>
                                </li>
                                <li><i class="icon-tel-footer"></i>
                                    <div class="link-wrapper"><a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a>, <a href="tel:<?php echo $fax; ?>"><?php echo $fax; ?></a></div>
                                </li>
                                <li><i class="icon-envelope"></i><a href="mailto:&#111;&#112;&#116;&#105;&#109;&#097;&#108;&#103;&#097;&#115;&#064;&#109;&#097;&#105;&#108;&#046;&#114;&#117;">&#111;&#112;&#116;&#105;&#109;&#097;&#108;&#103;&#097;&#115;&#064;&#109;&#097;&#105;&#108;&#046;&#114;&#117;</a></li>
                            </ul>
                        </nav>
                        <h5>Личный кабинет</h5>
                        <nav>
                            <ul class="nav-list">
                                <li> <a href="#" class="login-link">Вход</a>
                                    <span>/</span>
                                    <a href="#" class="login-link">регистрация</a></li>
                                <li><a href="#">Корзина</a></li>
                            </ul>
                        </nav>
                    </section>
                    <section class="footer-column">
                        <h5>Задайте нам вопрос</h5>
                        <form action="#" class="question-form">
                            <div class="row">
                                <input type="text" placeholder="Имя">
                            </div>
                            <div class="row">
                                <input type="email" placeholder="Электронный адрес" required>
                            </div>
                            <div class="row">
                                <input type="text" placeholder="Тема вопроса">
                            </div>
                            <div class="row">
                                <textarea cols="30" rows="10" placeholder="Ваше сообщение"></textarea>
                            </div>
                            <div class="row">
                                <button class="btn btn-submit"><i class="icon-paperplane"></i> <span>Отправить</span></button>
                            </div>
                        </form>
                    </section>
                </div>
                <div class="copy">
                    Сopiright <a href="#">OPTimalgas</a> 2016
                </div>
            </div>
        </footer>
    </div>
    <div class="modal login-window" data-modal-window id="modal-login">
        <a class="close" data-modal-close>&times;</a>
        <h5>ВХОД В ИНТЕРНЕТ-МАГАЗИН</h5>
        <form action="http://optimalgas.lotomsl.com/login" method="post" enctype="multipart/form-data" class="reg-form">
            <div class="modal-row">
                <label for="login-name">E-mail: *</label>
                <input type="text" name="email" value="" id="login-name" placeholder="Ваша почта" required>
            </div>
            <div class="modal-row">
                <label for="login-psw">Пароль: *</label>
                <input type="password" name="password" value="" id="login-psw" placeholder="" required>
            </div>
            <div class="modal-row">
                <button type="submit" value="" class="btn btn-primary">Войти</button>
                <a href="#" class="reg-link">Зарегестрироваться</a>
            </div>
            <a href="#" class="forgot">Забыли пароль?</a>
        </form>
    </div>
    <div class="modal reg-window" data-modal-window id="modal-reg">
        <a class="close" data-modal-close>&times;</a>
        <h5>РЕГИСТРАЦИЯ</h5>
        <form action="#" class="reg-form">
            <div class="modal-row">
                <label for="reg-name">Имя: *</label>
                <input type="text" id="reg-name" placeholder="Введите имя" required>
            </div>
            <div class="modal-row">
                <label for="mail">E-mail: *</label>
                <input type="email" id="mail" placeholder="Адрес электронный почты" required>
            </div>
            <div class="modal-row">
                <label for="tel-number">Номер телефона (логин): *</label>
                <input type="text" id="tel-number" placeholder="Мобильный телефон" required>
            </div>
            <div class="modal-row">
                <label for="psw">Придумайте пароль: *</label>
                <input type="password" id="psw" placeholder="6 или более символов" required>
            </div>
            <div class="modal-row">
                <label for="confirm-psw">Придумайте пароль: *</label>
                <input type="password" id="confirm-psw" placeholder="Введите пароль еще раз" required>
            </div>
            <button type="submit" class="btn btn-primary">Зарегестрироваться</button>
        </form>
    </div>
    <div class="modal cart-window" data-modal-window id="modal-cart">
        <a class="close" data-modal-close>&times;</a>
        <h5>Корзина</h5>
        <form action="#">
            <div class="cart-row">
                <div class="order-info">
                    <a href="#" class="img-holder"><img src="catalog/view/theme/gas/build/images/img1.jpg" alt="Баллон 
                        315х753 55 л,
                        Green Gas">
                    </a>
                    <div class="img-description">
                        Баллон 315х753 55 л, Green Gas
                        <span class="price">1400</span>
                    </div>
                </div>
                <div class="order-price-info">
                    <div class="quantity">
                        <input type="number" min="1" max="999" step="1" value="2">
                        <span>шт.</span>
                    </div>
                    <span class="sum">2800 грн.</span>
                </div>
            </div>
            <div class="divider"></div>
            <span class="result"><span>Итого:&nbsp;&nbsp;</span>2800грн.</span>
            <div class="cart-row footer-row">
                <a href="#" class="cont-link">Продолжить покупки</a>
          <a href="http://optimalgas.lotomsl.com/simplecheckout" class="btn btn-primary">Оформить заказ</a>
            </div>
        </form>
    </div>
    <div class="modal call-back-window" data-modal-window id="modal-call-back">
        <a class="close" data-modal-close>&times;</a>
        <h5>ЗАКАЗАТЬ ОБРАТНЫЙ ЗВОНОК</h5>
        <span>Заполните соответствующие поля и мы свяжемся с Вами в течение  нескольких часов</span>
        <form action="#" class="reg-form">
            <div class="modal-row">
                <label for="call-tel">Номер телефона: *</label>
                <input type="tel" id="call-tel" placeholder="Мобильный телефон" required>
            </div>
            <div class="modal-row">
                <label for="name2">Ваше имя: *</label>
                <input type="text" id="name2" placeholder="" required>
            </div>
            <div class="modal-row center-flex">
                <button type="submit" class="btn btn-primary">Заказать звонок</button>
            </div>
        </form>
    </div>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script src="build/js/vendor.js"></script>
    <script src="build/js/app.js"></script>
    <script src="build/js/custom-map.js"></script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-103575959-1', 'auto');
  ga('send', 'pageview');

</script>

</body>

</html>