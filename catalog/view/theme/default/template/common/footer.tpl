 <footer id="footer">
            <div class="container ">
                <div class="column-holder">
                    <section class="footer-column">
                        <h5>Наша продукция</h5>
                        <nav>
                            <ul class="nav-list">
<?php foreach ($categories as $category) { ?>
                                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a> </li>
                      <?php } ?>
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
                                    <address><a target="_blank" href="https://www.google.com/maps/place/вулиця+Шевченка,+238,+Харків,+Харківська+область,+Украина/@50.0133891,36.2884566,18z/data=!4m13!1m7!3m6!1s0x4127a74bc42aa71f:0x9621e67fabd9e8a2!2z0LLRg9C70LjRhtGPINCo0LXQstGH0LXQvdC60LAsIDIzOCwg0KXQsNGA0LrRltCyLCDQpdCw0YDQutGW0LLRgdGM0LrQsCDQvtCx0LvQsNGB0YLRjCwg0KPQutGA0LDQuNC90LA!3b1!8m2!3d50.0134408!4d36.2894437!3m4!1s0x4127a74bc42aa71f:0x9621e67fabd9e8a2!8m2!3d50.0134408!4d36.2894437?hl=ru-RU">г. Харьков, ул. Шевченко 238</a></address>
                                </li>
                                <li><i class="icon-tel-footer"></i>
                                    <div class="link-wrapper"><a href="tel:<?php echo $telephone; ?>">Бесплатно <?php echo $telephone; ?></a></div>
                                </li>
                                <li><i class="icon-envelope"></i><a href="mailto:info@optimalgas.com.ua" >info@optimalgas.com.ua</a></li>
                            </ul>
                        </nav>
                    </section>
                    <section class="footer-column">
                        <h5>Задайте нам вопрос</h5>
                        <form class="question-form" id="form1">
                            <div class="row">
                                <input type="text" placeholder="Имя" name="name" value="" id="input-name" required>
                            </div>
                            <div class="row">
                                <input type="email" placeholder="Электронный адрес" name="email" id="input-email" required>
                            </div>
                            <div class="row">
                                <input type="text" placeholder="Тема вопроса" name="tema">
                                <input type="hidden" name="metka" value="optimal">
                            </div>
                            <div class="row">
                                <textarea cols="30" rows="10" placeholder="Ваше сообщение" name="enquiry" id="input-enquiry"></textarea>
                            </div>
                            <div class="row">
                                <button class="btn btn-submit" type="submit"><i class="icon-paperplane"></i> <span>Отправить</span></button>
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </footer>
    </div>
    <div class="modal login-window" data-modal-window id="modal-login">
        <a class="close" data-modal-close>&times;</a>
        <h5>ВХОД В ИНТЕРНЕТ-МАГАЗИН</h5>
        <form action="https://optimalgas.com.ua/login" method="post" enctype="multipart/form-data" class="reg-form">
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
                <a href="/simpleregister" class="reg-link">Зарегистрироваться</a>
            </div>
            <a href="/forgot-password" class="forgot">Забыли пароль?</a>
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
            <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
        </form>
    </div>
    <div class="modal call-back-window" data-modal-window id="modal-call-back">
        <a class="close" data-modal-close>&times;</a>
        <h5>ЗАКАЗАТЬ ОБРАТНЫЙ ЗВОНОК</h5>
        <span>Заполните соответствующие поля и мы свяжемся с Вами в течение  нескольких часов</span>
        <form action="#" class="reg-form" id="zvonok">
            <div class="modal-row">
                <label for="call-tel">Номер телефона: *</label>
                <input type="tel" id="call-tel" placeholder="Мобильный телефон" name="phone" required>
            </div>
            <div class="modal-row">
                <label for="name2">Ваше имя: *</label>
                <input type="text" id="name2" name="name" placeholder="" required>
                <input type="hidden" name="metka" value="optimal">
            </div>
            <div class="modal-row center-flex">
                <button type="submit" class="btn btn-primary">Заказать звонок</button>
            </div>
        </form>
    </div>


<script src="/catalog/view/javascript/jquery/jquery-2.2.4.min.js" type="text/javascript"></script>

    <script defer src="/catalog/view/javascript/common.js" type="text/javascript"></script>

    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>

    <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>

    <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>

    <?php foreach ($analytics as $analytic) { ?>
        <?php echo $analytic; ?>
    <?php } ?>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAaIl3sRnHH7g29FKAdvZSlum46EfQq7ns&v=3.exp"></script>
    <script src="build/js/vendor.js"></script>
    <script src="build/js/app.js"></script>
    <script src="build/js/custom-map.js"></script>
    <script src="build/js/script.js"></script>
</body>

</html>