<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="exchangesoftware.info">
    <meta name="description" content="<?php echo $settings['description']; ?>">
    <meta name="keywords" content="<?php echo $settings['keywords']; ?>">

    <title><?php echo BitDecodeTitle($_GET['a']); ?></title>

    <!-- CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
          rel="stylesheet">

    <!-- CSS  -->
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.1.1/css/all.css">

    <link rel="stylesheet" href="<?php echo $settings['url']; ?>assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo $settings['url']; ?>assets/css/fancybox.css">
    <link rel="stylesheet" href="<?php echo $settings['url']; ?>assets/css/style.css">
    <link rel="stylesheet" href="<?php echo $settings['url']; ?>assets/css/slick.css">
    <link href="<?php  echo $settings['url']; ?>assets/css/aos.css" rel="stylesheet">

    <link rel="stylesheet" href="<?php echo $settings['url']; ?>assets/css/helper.css">
    <link rel="stylesheet" href="<?php echo $settings['url']; ?>assets/css/main.css">

    <script src="<?php echo $settings['url']; ?>assets/js/jquery.min.js"></script>
    <script src="<?php echo $settings['url']; ?>assets/js/bootstrap.min.js"></script>
    <script src="<?php echo $settings['url']; ?>assets/js/popper.min.js"></script>
    <script src="<?php echo $settings['url']; ?>assets/js/slick.min.js"></script>
    <script src="<?php echo $settings['url']; ?>assets/js/aos.js"></script>
    <link rel="icon" type="image/x-icon" href="favicon.ico">

    <script type="module">
        import {Fancybox} from '../assets/js/fancybox.esm.js';
    </script>
    <!---->
    <!--    	<script src="--><?php //echo $settings['url']; ?><!--assets/js/jquery.min.js"></script>-->
    <!--    <script src="--><?php //echo $settings['url']; ?><!--assets/js/bootstrap.min.js"></script>-->
    <script src="<?php echo $settings['url']; ?>assets/js/BitExchanger.js"></script>
    <script type="text/javascript" src="<?php echo $settings['url']; ?>assets/js/functions.js"></script>
    <script type="text/javascript" src="<?php echo $settings['url']; ?>assets/js/main.js"></script>
    <style>.navbar-top{
            background-color: #c8e2f8;
            text-align: center;
            color: #125a96;
            padding: 5px;
        }</style>
</head>
<body>


<!-- header -->
<header id="header" class="clearfix">
    <div class="navbar-top"><div class="container">Время работы. 08:00 - 22:00 МСК</div></div>
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a class="navbar-brand" href="<?php echo $settings['url']; ?>" style="font-size:24px;color: #1568ac;">Аpexchange</a>
            </div>

            <div class="navbar-left">
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<?php echo $settings['url']; ?>" class="items">
                                <i class="fa-regular fa-arrows-rotate"></i>
                                <?php echo $lang['exchange']; ?>
                            </a></li>
                        <li>
                            <a href="<?php echo $settings['url']; ?>testimonials" class="items">
                                <i class="fa-regular fa-star-sharp"></i>
                                <?php echo $lang['testimonials']; ?>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo $settings['url']; ?>affiliate" class="items">
                                <i class="fa-regular fa-handshake"></i>
                                <?php echo $lang['affiliate']; ?>
                            </a>
                        </li>
                        <li>

                        </li>
                    </ul>
                </div>
            </div>

            <div class="nav-right">
                <div class="nav-right__inner">
                    <a href="<?php echo $settings['url']; ?>contact" class="items active">
                        <i class="fa-regular fa-id-card"></i>
                        <?php echo $lang['contact']; ?>
                    </a>
                    <button type="button" class="btn btn-alt-primary">
                        <i class="fa fa-telegram mr-5"></i>
                      <a  href="https://t.me/apexchange24" style='color:#1568ac !important'  target="_blank" > Обмен в Telegram </a>
                    </button>
                </div>
                <?php if (checkSession()) { ?>
                    <!-- sign-in -->
                    <ul class="sign-in">
                        <li><i class="fa fa-user text-default"></i></li>

                        <li>
                            <a href="<?php echo $settings['url']; ?>account/exchanges"><?php echo idinfo($_SESSION['bit_uid'], "username"); ?></a>
                        </li>
                        <li><a href="<?php echo $settings['url']; ?>logout"><?php echo $lang['logout']; ?></a></li>

                    </ul><!-- sign-in -->
                <?php } ?>
            </div>
    </nav>
</header>

<div class="wrapper mt-30">
