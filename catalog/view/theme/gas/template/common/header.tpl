<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/><?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" /><?php } ?><?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>" /><?php } ?>
    <link rel="icon" href="build/images/favicon.png" type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,700" rel="stylesheet">
    <link media="all" rel="stylesheet" href="build/css/vendor.css">
    <link media="all" rel="stylesheet" href="build/css/style.css">
    <script src="http://optimalgas.lotomsl.com/catalog/view/javascript/jquery/jquery-2.2.4.min.js"
            type="text/javascript"></script>
    <script src="http://optimalgas.lotomsl.com/catalog/view/javascript/bootstrap/js/bootstrap.min.js"
            type="text/javascript"></script>
    <script defer src="http://optimalgas.lotomsl.com/catalog/view/javascript/common.js"
            type="text/javascript"></script><?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>" /><?php } ?><?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>"
              rel="<?php echo $link['rel']; ?>" /><?php } ?><?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>"
                type="text/javascript"></script><?php } ?>    <?php foreach ($analytics as $analytic) { ?><?php echo $analytic; ?><?php } ?>
</head>
<body>
<div class="wrapper">
    <header id="header">
        <div class="container">
            <div class="top-header">
                <div class="contact-block tel-block">
                    <div class="icon-box icon-box-phone"><i class="icon-phone"></i></div>
                    <div class="tel-box">
                        <a href="tel:+380500318090">+380500318090</a>
                        <a href="tel:+380632455458">+380632455458</a>
                        <a href="tel:+380683663834">+380683663834</a>
                    </div>
                </div>
                <div class="contact-block mail-block">
                    <div class="icon-box icon-box-mail"><i class="icon-mail2"></i></div>
                    <a href="mailto:&#111;&#112;&#116;&#105;&#109;&#097;&#108;&#103;&#097;&#115;&#064;&#109;&#097;&#105;&#108;&#046;&#114;&#117;"
                       class="mail-link">&#111;&#112;&#116;&#105;&#109;&#097;&#108;&#103;&#097;&#115;&#064;&#109;&#097;&#105;&#108;&#046;&#114;&#117;</a>
                </div>
                >
                <div class="login-block">
                    <div class="icon-box icon-box-login"><i class="icon-user"></i></div> <?php if ($logged) { ?> <a
                            href="<?php echo $account; ?>" class="login-link">Кабинет</a>                        <span>&nbsp;/&nbsp;</span>
                        <a href="<?php echo $logout; ?>" class="login-link">Выход</a>            <?php } else { ?>
                        <a href="#" class="login-link" data-modal="#modal-login">Вход</a>                        <span>&nbsp;/&nbsp;</span>
                        <a href="<?php echo $register; ?>" class="login-link">регистрация</a>            <?php } ?>
                </div>
                <div class="cart-block">
                    <button class="cart" data-modal="#modal-cart"><i class="icon-cart"></i> <span class="quantity-cart">1</span>
                    </button>
                </div>
            </div>
        </div>
        <nav class="main-nav">
            <div class="container nav-container">
                <div class="logo"><a href="<?php echo $home; ?>"><img src="build/images/logo.png" height="150"
                                                                      width="150"
                                                                      alt="OPTIMAL газобалонное оборудование"></a>
                </div><?php if ($categories) { ?> <a href="#" class="nav-opener"><span></span></a>
                <ul class="nav-drop">
                    <li class="drop-down"><a href="#" class="drop-opener">МАГАЗИН<span class="triangle-down"></span></a>
                        <ul class="drop-down-content">                  <?php foreach ($categories as $category) { ?><?php if ($category['children']) { ?>
                                <li class="drop-right"><a
                                            href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                    <span class="triangle"></span>
                                    <ul class="drop-right-content">                      <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?><?php foreach ($children as $child) { ?>
                                            <li>
                                                <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                            </li>                   <?php } ?><?php } ?>                      </ul>
                                </li>                     <?php } else { ?>
                                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                </li> <?php } ?><?php } ?>                  </ul>
                    </li><?php } ?>           <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                        </li>                <?php } ?>                                </ul>
                <div id="search-block">
                    <button class="search-opener"><i class="icon-search"></i></button>
                    <form class="search-slide" action="/search"><input class="search-field" type="search" name="search"
                                                                       required>
                        <button class="submit-seacrh" type="submit" value="поиск"><i class="icon-search"></i></button>
                    </form>
                </div>
            </div>
        </nav>
    </header>