<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <link rel="icon" href="build/images/favicon.png" type="image/png">
     
<!-- Fonts Loader from _fonts.css (HTML5 LocalStorage) -->
	<script>!function(){function e(e,t,n){e.addEventListener?e.addEventListener(t,n,!1):e.attachEvent&&e.attachEvent("on"+t,n)}function t(e){return window.localStorage&&localStorage.font_css_cache&&localStorage.font_css_cache_file===e}function n(){if(window.localStorage&&window.XMLHttpRequest)if(t(o))a(localStorage.font_css_cache);else{var n=new XMLHttpRequest;n.open("GET",o,!0),e(n,"load",function(){4===n.readyState&&(a(n.responseText),localStorage.font_css_cache=n.responseText,localStorage.font_css_cache_file=o)}),n.send()}else{var c=document.createElement("link");c.href=o,c.rel="stylesheet",c.type="text/css",document.getElementsByTagName("head")[0].appendChild(c),document.cookie="font_css_cache"}}function a(e){var t=document.createElement("style");t.innerHTML=e,document.getElementsByTagName("head")[0].appendChild(t)}var o="_fonts.css";window.localStorage&&localStorage.font_css_cache||document.cookie.indexOf("font_css_cache")>-1?n():e(window,"load",n)}();</script>
	
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,700" rel="stylesheet">
   
    <link media="all" rel="stylesheet" href="build/css/style.css">

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
    
</head>

<body>
<div class="wrapper">
    <header id="header">
        <div class="container">
            <div class="top-header">
                <div class="contact-block tel-block">
                    <div class="icon-box icon-box-phone">
                        <i class="icon-phone"></i>
                    </div>
                    <div class="tel-box">
                        <a href="tel:0632455458" class="tel-link">0632455458</a>
                        <a href="tel:0500318090" class="tel-link">0500318090</a>
                        <a href="tel:0683663834" class="tel-link">0683663834</a>
                    </div>
                </div>
                <div class="contact-block tel-block">
                    <div class="icon-box icon-box-phone">
                        <i class="icon-phone"></i>
                    </div>
                    <div class="tel-box">
                        <a href="tel:<?php echo $telephone; ?>" class="tel-link"><?php echo $telephone; ?></a>
                        <a href="tel:<?php echo $telephone; ?>" class="tel-link">Бесплатно</a>
                    </div>
                </div>

                <div class="contact-block mail-block">
                    <div class="icon-box icon-box-mail">
                        <i class="icon-mail2"></i>
                    </div>
                    <div class="tel-box">
                        <a href="mailto:info@optimalgas.com.ua"
                           class="mail-link">info@optimalgas.com.ua</a>
                        
                            
                    </div>
                </div>
                
                <div class="contact-block mail-block">
                    <div class="icon-box icon-box-mail">
                        <i class="icon-shop"></i>
                    </div>
                    <div class="tel-box">
                        <span class="mail-link"><?php echo $text_open; ?></span>
                    </div>
                </div>
                
                <div class="login-block">
                    <div class="icon-box icon-box-login">
                        <i class="icon-user"></i>
                    </div>


                    <?php if ($logged) { ?>
                        <a href="<?php echo $account; ?>" class="login-link">Кабинет</a>
                        <span>&nbsp;/&nbsp;</span>
                        <a href="<?php echo $logout; ?>" class="login-link">Выход</a>
                    <?php } else { ?>
                        <a href="#" class="login-link" data-modal="#modal-login">Вход</a>
                        <span>&nbsp;/&nbsp;</span>
                        <a href="<?php echo $register; ?>" class="login-link">Регистрация</a>
                    <?php } ?>

                </div>
                <?php echo $cart; ?>
            </div>
        </div>
        <nav class="main-nav">
            <div class="container nav-container">
                <div class="logo">
                    <a href="<?php echo $home; ?>"><img src="build/images/logo.png" height="150" width="150"
                                                        alt="OPTIMAL газобалонное оборудование"></a>
                </div>
                <?php if ($categories) { ?>

                <a href="#" class="nav-opener"><span></span></a>
                <ul class="nav-drop">
                    <?php } ?>
                        <li><a href="/delivery">ОПЛАТА И ДОСТАВКА</a></li>
                        <li><a href="/garantiya">ГАРАНТИЯ</a></li>
                        <li><a href="/novosti">НОВОСТИ</a></li>
                    <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                </ul>
        </nav>
                <div id="search-block">
                    <form class="search-slide" action="/search">
                        <input class="search-field" type="search" name="search"placeholder="Поиск" required>
                        <button class="submit-seacrh" type="submit" value="поиск">
                            <i class="icon-search"></i>
                        </button>
                    </form>
               </div>   
    </header>
</div>
</body>
</html>
