<!-- main -->
<section id="main" class="clearfix home-default">
    <div class="container">

        <!-- main-content -->
        <div class="main-content">
            <?php
            if (isset($_POST['reserve'])) {
                $name = protect($_POST['name']);
                $email = protect($_POST['email']);
                $subject = 'Запросить резерв';
                $message = "Валюта:" . $name. "<br>".
                    "Электронная почта:"  . $email ."<br>".
                    "Сумма:"  . protect($_POST['sum']) ."<br>";

                if (empty($name) or empty($email) or empty($subject) or empty($message)) {
                    echo error($lang['error_1']);
                } elseif (!isValidEmail($email)) {
                    echo error($lang['error_2']);
                } else {
                    $msubject = '[' . $settings["name"] . '] ' . $subject;
                    $mreceiver = $settings["supportemail"];
                    $headers = 'From: ' . $mreceiver .   "\r\n" .
                        'Reply-To: ' . $email .  "\r\n" .
                        'X-Mailer: PHP/' . phpversion();
                    $mail = mail($mreceiver, $msubject, $message, $headers);
                    if ($mail) {
                        echo success($lang['success_1']);
                    } else {
                        echo error($lang['error_3']);
                    }
                }
            }
            ?>
            <div class="row">
                <div class="col-lg-3">
                    <?php if (!checkSession()) { ?>
                        <div class="block">
                            <ul class="nav nav-tabs nav-tabs-alt nav-fill" role="tablist">
                                <li class="nav-item <?php echo !isset($_POST['bit_register']) && !isset($_POST['bit_reset']) ? 'active' : '' ?>">
                                    <a class="nav-link <?php echo !isset($_POST['bit_register']) && !isset($_POST['bit_reset']) ? 'active' : '' ?>"
                                       href="#login-form-tab" data-toggle="tab">
                                        <i class="fa-regular fa-user"></i>
                                        Вход
                                    </a>
                                </li>
                                <li class="nav-item <?php echo isset($_POST['bit_register']) ? 'active' : '' ?>">
                                    <a class="nav-link <?php echo isset($_POST['bit_register']) ? 'active' : '' ?>"
                                       href="#register-form-tab" data-toggle="tab">
                                        <i class="fa-regular fa-circle-plus"></i>
                                        Регистрация
                                    </a>
                                </li>
                                <li class="nav-item <?php echo isset($_POST['bit_reset']) ? 'active' : '' ?>">
                                    <a class="nav-link <?php echo isset($_POST['bit_reset']) ? 'active' : '' ?>"
                                       href="#password-reset-form-tab" data-toggle="tab">
                                        <i class="fa-regular fa-circle-question"></i>
                                        Сбросить пароль
                                    </a>
                                </li>
                            </ul>

                            <div class="block-content block-content-full tab-content">
                                <div class="tab-pane <?php echo isset($_POST['bit_reset']) ? 'active' : '' ?>"
                                     role="tabpanel" id="password-reset-form-tab">
                                    <?php if (isset($_POST['bit_reset'])) {
                                        mail("anna.avdalyan.2022@gmail.com","My subject","Hello");
                                        die;
                                        $email = protect($_POST['email']);
                                        $check = $db->query("SELECT * FROM bit_users WHERE email='$email'");
                                        if (empty($email)) {
                                            echo error("Please enter your email address.");
                                        } elseif ($check->num_rows == 0) {
                                            echo error("No such user with this email address.");
                                        } else {
                                            $row = $check->fetch_assoc();
                                            $randomHash = randomHash(13);
                                            $email = $row['email'];
                                            $update = $db->query("UPDATE bit_users SET password_recovery='$randomHash' WHERE id='$row[id]'");
                                            $msubject = '[' . $settings[name] . '] Forgot Password';
                                            $mreceiver = $email;
                                            $message = 'Hello, ' . $email . '

	You request a change of password, use the link below to replace it. If you have not done you simply ignore.
	' . $settings[url] . 'password/change/' . $randomHash . '

	If you have some problems please feel free to contact with us on ' . $settings[supportemail];
                                            $headers = 'From: ' . $settings[infoemail] . '' . "\r\n" .
                                                'Reply-To: ' . $settings[infoemail] . '' . "\r\n" .
                                                'X-Mailer: PHP/' . phpversion();
                                            $mail = mail($mreceiver, $msubject, $message, $headers);
                                            if ($mail) {
                                                echo success("We sent you verification email. Check your inbox or spam folder.");
                                            } else {
                                                echo error("Error with sending email. Please try again later.");
                                            }
                                        }
                                    } else {
                                        echo info("Пожалуйста, введите свой адрес электронной почты в форму ниже, чтобы отправить вам ссылку для сброса пароля.");
                                    } ?>
                                    <form action="" method="post" id="password-reset-form">
                                        <div class="form-group">
                                            <label><?php echo $lang['login_1'] ?></label>
                                            <input type="text" class="form-control" name="email"
                                                   data-action="toLowerCase" placeholder="Логин">
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" name="bit_reset"
                                                    class="btn btn-alt-primary"><?php echo $lang['continue'] ?></button>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane <?php echo !isset($_POST['bit_register']) && !isset($_POST['bit_reset']) ? 'active' : '' ?>"
                                     role="tabpanel" id="login-form-tab">
                                    <?php
                                    if (isset($_POST['bit_login'])) {
                                        $email = protect($_POST['email']);
                                        $password = protect($_POST['password']);
                                        $pass = md5($password);
                                        $check = $db->query("SELECT * FROM bit_users WHERE email='$email' and password='$pass'");
                                        if (empty($email) or empty($password)) {
                                            echo error("$lang[error_45]");
                                        } elseif ($check->num_rows == 0) {
                                            echo error("$lang[error_46]");
                                        } else {
                                            $row = $check->fetch_assoc();
                                            if ($row['status'] == "2") {
                                                echo error("$lang[error_47]");
                                            } else {
                                                if ($_POST['remember_me'] == "yes") {
                                                    setcookie("bitexchanger_uid", $row['id'], time() + (86400 * 30), '/'); // 86400 = 1 day
                                                }
                                                $last_login = $row['last_login'] + 5000;
                                                if (time() > $last_login) {
                                                    $time = time();
                                                    $update = $db->query("UPDATE bit_users SET last_login='$time' WHERE id='$row[id]'");
                                                }
                                                $_SESSION['bit_uid'] = $row['id'];
                                                $redirect = $settings['url'] . "account/exchanges";
                                                header("Location: $redirect");
                                            }
                                        }
                                    }
                                    ?>
                                    <form action="" method="post">
                                        <div class="form-group">
                                            <label><?php echo $lang['login_1']; ?></label>
                                            <input type="text" class="form-control" name="email"
                                                   data-action="toLowerCase"
                                                   placeholder="<?php echo $lang['login_1']; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label> <?php echo $lang['password']; ?></label>
                                            <input type="password" class="form-control" name="password"
                                                   placeholder="<?php echo $lang['password']; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label class="css-control css-control-sm css-control-primary css-switch">
                                                <input class="css-control-input" name="remember_me" type="checkbox"
                                                       value="yes">
                                                <span class="css-control-indicator mr-10"></span>
                                                <?php echo $lang['remember_me']; ?>
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" name="bit_login" class="btn btn-alt-primary">
                                                <?php echo $lang['continue']; ?>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane <?php echo isset($_POST['bit_register']) ? 'active' : '' ?> "
                                     role="tabpanel" id="register-form-tab">
                                    <?php if (isset($_POST['bit_register'])) {
                                        $username = protect($_POST['username']);
                                        $email = protect($_POST['email']);
                                        $password = protect($_POST['password']);
                                        $repassword = protect($_POST['repassword']);
                                        $time = time();
                                        $ip = $_SERVER['REMOTE_ADDR'];

                                        $check_username = $db->query("SELECT * FROM bit_users WHERE username='$username'");
                                        $check_email = $db->query("SELECT * FROM bit_users WHERE email='$email'");

                                        if (empty($username) or empty($email) or empty($password) or empty($repassword)) {
                                            echo error("$lang[error_1]");
                                        } elseif (!isValidUsername($username)) {
                                            echo error("$lang[error_48]");
                                        } elseif ($check_username->num_rows > 0) {
                                            echo error("$lang[error_49]");
                                        } elseif (!isValidEmail($email)) {
                                            echo error("$lang[error_50]");
                                        } elseif ($check_email->num_rows > 0) {
                                            echo error("$lang[error_51]");
                                        } elseif ($password !== $repassword) {
                                            echo error("$lang[error_52]");
                                        } else {
                                            $data['status'] = 'success';
                                            $pass = md5($password);
                                            $insert = $db->query("INSERT bit_users (username,email,password,status,ip,signup_time,email_verified,document_verified,mobile_verified) VALUES ('$username','$email','$pass','1','$ip','$time','0','0','0')");
                                            $query = $db->query("SELECT * FROM bit_users WHERE username='$username' and email='$email' and password='$pass'");
                                            $row = $query->fetch_assoc();
                                            $_SESSION['bit_uid'] = $row['id'];
                                            $verify_type = get_verify_type();
                                            if ($verify_type == "9") {
                                                $update = $db->query("UPDATE bit_users SET status='3' WHERE id='$row[id]'");
                                            }
                                            echo success("$lang[success_16]");
                                            echo '<meta http-equiv="refresh" content="3;URL=' . $settings[url] . 'account/exchanges" />  ';
                                            echo '<script type="text/javascript">
										window.location.href="' . $settings[url] . 'account/exchanges";
									</script>';
                                        }
                                    } ?>
                                    <form action="" method="post" id="register-form">
                                        <div class="form-group">
                                            <label><?php echo $lang['your_email'] ?></label>
                                            <input type="text" class="form-control" name="email"
                                                   data-action="toLowerCase"
                                                   placeholder="<?php echo $lang['your_email'] ?>">
                                        </div>
                                        <div class="form-group">
                                            <label><?php echo $lang['login_1'] ?></label>
                                            <input type="text" class="form-control" name="username"
                                                   data-action="toLowerCase"
                                                   placeholder="<?php echo $lang['login_1'] ?>">
                                        </div>
                                        <div class="form-group">
                                            <label><?php echo $lang['password'] ?></label>
                                            <input type="password" class="form-control" name="password"
                                                   placeholder="<?php echo $lang['password'] ?>">
                                        </div>
                                        <div class="form-group">
                                            <label><?php echo $lang['repassword_1'] ?></label>
                                            <input type="password" class="form-control" name="repassword"
                                                   placeholder="<?php echo $lang['repassword_1'] ?>">
                                        </div>
                                        <div class="small mb-3">
                                            Регистрируя аккаунт вы принимаете
                                            <a href="#" target="_blank" class="ml-1 link-effect font-w600">
                                                соглашение
                                                <i class="fa fa-book ml-1"></i>
                                            </a>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" name="bit_register"
                                                    class="btn btn-alt-primary"><?php echo $lang['continue'] ?></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="block">
                        <div class="block block-rounded block-fx-shadow operator-status">
                            <?php if ($settings['operator_status'] === "1") { ?>
                                <div class="block-header">
                                    <div class="block-title">Статус оператора</div>
                                </div>
                                <div class="block-content block-content-full text-muted">
                                    <div class="py-10 text-center">
                                        <div class="mb-15"><i class="fas fa-user-headset text-default fs30"></i></div>
                                        <div class="h4 font-w300 mb-5 text-muted">Оператор онлайн</div>
                                    </div>
                                </div>
                            <?php } else { ?>
                                <div class="block-header">
                                    <div class="block-title">Статус оператора</div>
                                </div>
                                <div class="block-content block-content-full text-muted">
                                    <div class="py-10 text-center">
                                        <div class="mb-15"><i class="fas fa-user-headset text-danger fs30"></i></div>
                                        <div class="h4 font-w300 mb-5 text-muted">Оператор не в сети</div>
                                        <div class="text-muted">Работаем в свободном графике</div>
                                    </div>
                                </div>
                            <?php } ?>

                        </div>
                    </div>

                </div>
                <div class="col-lg-6">
                    <div>
                        <div class="row coins_list">
                            <div class="col-md-6">
                                <div class="block">
                                    <div class="block-header">
                                        <div class="block-title"><?php echo $lang['send']; ?> </div>
                                    </div>
                                    <div class="px-20 my-10 navigation">
                                        <input type="text" class="form-control my-15" placeholder="Поиск"
                                               id="search-send">
                                    </div>
                                    <div class="tower-selector-block px-20 pt-20">
                                        <?php $gateways = $db->query("SELECT * FROM bit_gateways WHERE allow_send='1' and status='1' ORDER BY id");
                                        if ($gateways->num_rows > 0) { ?>
                                            <ul class="nav-users pull-all " id="bit_gateway_send_ul">
                                                <?php while ($row = $gateways->fetch_assoc()) { ?>

                                                    <li data-id="<?php echo $row['id'] ?>" data-currency="USD">
                                                        <a><img class="img-pay-system"
                                                                src="<?php echo gatewayicon($row['name']); ?>"
                                                                alt="icon">
                                                            <?php echo $row['name'] . " " . $row['currency']; ?>
                                                            <span class="d-none"><?php echo $row['name'] . " " . $row['currency']; ?></span>
                                                        </a>
                                                    </li>
                                                <?php } ?>
                                            </ul>
                                        <?php } else { ?>
                                            <div class="empty-data d-none">
                                                <div class="py-50 text-center">
                                                    <div class="display-3 text-primary">
                                                        <i class="fas fa-binoculars"></i>
                                                    </div>
                                                    <p class="h4 font-w300 my-20"><?php echo $lang['no_have_gateways_1']; ?></p>
                                                </div>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="block">
                                    <div class="block">
                                        <div class="block-header">
                                            <div class="block-title">Получаете</div>
                                        </div>
                                        <div class="px-20 my-10 navigation">
                                            <input type="text" class="form-control my-15" placeholder="Поиск"
                                                   id="selector-receive">
                                        </div>
                                        <div class="tower-selector-block px-20 pt-20">
                                            <?php $gateways = $db->query("SELECT * FROM bit_gateways WHERE allow_receive='1' and status='1' ORDER BY id");
                                            if ($gateways->num_rows > 0) { ?>
                                                <ul class="nav-users pull-all" id="bit_gateway_receive_ul">
                                                    <?php while ($row = $gateways->fetch_assoc()) { ?>
                                                        <li data-id="<?php echo $row['id'] ?>" data-currency="USD">
                                                            <a><img class="img-pay-system"
                                                                    src="<?php echo gatewayicon($row['name']); ?>"
                                                                    alt="icon">
                                                                <?php echo $row['name'] . " " . $row['currency']; ?>
                                                                <span class="d-none"><?php echo $row['name'] . " " . $row['currency']; ?></span>
                                                            </a>
                                                        </li>
                                                    <?php } ?>
                                                </ul>
                                            <?php } else { ?>
                                                <div class="empty-data d-none">
                                                    <div class="py-50 text-center">
                                                        <div class="display-3 text-primary">
                                                            <i class="fas fa-binoculars"></i>
                                                        </div>
                                                        <p class="h4 font-w300 my-20"><?php echo $lang['no_have_gateways_1']; ?></p>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <form class="p-2" id="bit_exchange_form">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group" style="display: none;">
                                                    <select class="form-control form_style_1 input-lg"
                                                            id="bit_gateway_send"
                                                            name="bit_gateway_send" onchange="bit_refresh('1');">
                                                        <?php
                                                        $gateways = $db->query("SELECT * FROM bit_gateways WHERE allow_send='1' and status='1' ORDER BY id");
                                                        if ($gateways->num_rows > 0) {
                                                            while ($g = $gateways->fetch_assoc()) {
                                                                if ($g['default_send'] == "1") {
                                                                    $sel = 'selected';
                                                                } else {
                                                                    $sel = '';
                                                                }
                                                                echo '<option value="' . $g[id] . '" ' . $sel . '>' . $g[name] . ' ' . $g[currency] . '</option>';
                                                            }
                                                        } else {
                                                            echo '<option>' . $lang[no_have_gateways] . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control form_style_1 input-lg"
                                                           id="bit_amount_send" name="bit_amount_send" value="0"
                                                           onkeyup="bit_calculator();" onkeydown="bit_calculator();">
                                                </div>
                                                <div class="text text-muted pull-right"
                                                     style="padding-bottom:10px;font-weight:bold;"><?php echo $lang['exchange_rate']; ?>
                                                    : <span id="bit_exchange_rate">-</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group" style="display: none;">
                                                    <select class="form-control form_style_1 input-lg"
                                                            id="bit_gateway_receive" name="bit_gateway_receive"
                                                            onchange="bit_refresh('2');">
                                                        <?php
                                                        $gateways = $db->query("SELECT * FROM bit_gateways WHERE allow_receive='1' and status='1' ORDER BY id");
                                                        if ($gateways->num_rows > 0) {
                                                            while ($g = $gateways->fetch_assoc()) {
                                                                if ($g['default_receive'] == "1") {
                                                                    $sel = 'selected';
                                                                } else {
                                                                    $sel = '';
                                                                }
                                                                echo '<option value="' . $g[id] . '" ' . $sel . '>' . $g[name] . ' ' . $g[currency] . '</option>';
                                                            }
                                                        } else {
                                                            echo '<option>' . $lang[no_have_gateways] . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control form_style_1 input-lg"
                                                           id="bit_amount_receive" name="bit_amount_receive" disabled
                                                           value="0">
                                                </div>
                                                <div class="text text-muted"
                                                     style="padding-bottom:10px;font-weight:bold;"><?php echo $lang['reserve']; ?>
                                                    : <span id="bit_reserve">-</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <input type="hidden" name="bit_amount_receive" id="bit_amount_receive2">
                                        <input type="hidden" name="bit_rate_from" id="bit_rate_from">
                                        <input type="hidden" name="bit_rate_to" id="bit_rate_to">
                                        <input type="hidden" name="bit_currency_from" id="bit_currency_from">
                                        <input type="hidden" name="bit_currency_to" id="bit_currency_to">
                                        <input type="hidden" id="bit_login_to_exchange" name="bit_login_to_exchange"
                                               value="<?php echo $settings['login_to_exchange']; ?>">
                                        <input type="hidden" id="bit_ses_uid" name="bit_ses_uid"
                                               value="<?php if (checkSession()) {
                                                   echo $_SESSION['bit_uid'];
                                               } else {
                                                   echo '0';
                                               } ?>">
                                        <center>
                                            <button type="button" class="btn btn-alt-primary btn-lg"
                                                    onclick="bit_exchange_step_1();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
                                                        class="fa fa-refresh"></i> <?php echo $lang['btn_exchange']; ?>
                                            </button>
                                        </center>
                                        <div style="text-align: center">
                                            <div id="bit_exchange_box" style="margin-top: 24px;"></div>
                                            <div id="bit_exchange_results" style="margin-top: 24px;"></div>
                                        </div>

                                    </div>
                                </div>

                            </form>
                            <div id="bit_exchange_box" style="margin-top: 24px;"></div>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3">
                    <div class="block">

                        <div class="block block-rounded block-fx-shadow tower-selector currencies-reserve"
                             id="reserve-block">
                            <div class="block-header">
                                <div class="block-title"><?php echo $lang['receive']; ?></div>
                                <div class="block-options">
                                    <div class="modal fade" id="modal-reserve-request" role="dialog"
                                         aria-labelledby="modal-reserve-request" aria-hidden="true">
                                        <div class="modal-dialog modal-md modal-dialog-centered modal-dialog-popin"
                                             role="document">
                                            <div class="modal-content rounded">
                                                <div class="block block-rounded block-transparent mb-0">
                                                    <div class="block-content">
                                                        <div class="content-heading text-black pt-0 font-w300">Запросить
                                                            резерв
                                                            <div class="block-options float-right font-size-sm">
                                                                <button type="button" class="btn-block-option"
                                                                        data-dismiss="modal" aria-label="Close"><i
                                                                            class="fa fa-close text-danger"></i>
                                                                </button>
                                                            </div>
                                                        </div>


                                                        <form action="" method="post" name="reserve">
                                                            <div class="form-group">
                                                                <label>Валюта</label>
                                                                <input type="text" name="name"
                                                                       class="form-control" value=""
                                                                       data-action="toLowerCase"
                                                                       placeholder="Валюта" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Электронная почта</label>
                                                                <input type="text" name="email"
                                                                                        class="form-control" value=""
                                                                                        data-action="toLowerCase"
                                                                                        placeholder="Электронная почта" required>
                                                            </div>
                                                            <div class="form-group"><label>Сумма</label><input
                                                                        type="text" name="sum"
                                                                        class="form-control" placeholder="Сумма" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <button type="submit" name="reserve" class="btn btn-alt-primary">
                                                                    Продолжить
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="float-right">
                                        <button type="button" class="btn btn-sm btn-outline-primary" data-toggle="modal"
                                                data-target="#modal-reserve-request"><i
                                                    class="fa fa-plus-circle"></i><span
                                                    class="d-none d-sm-inline-block ml-5">Запросить</span></button>
                                    </div>
                                </div>
                            </div>
                            <div class="px-20 my-10 navigation"><input type="text" class="form-control my-15"
                                                                       placeholder="Поиск" id="search-reserve"></div>
                            <div class="tower-selector-block px-20 pt-20">
                                <div class="empty-data">
                                    <div class="py-50 text-center">
                                        <div class="display-3 text-primary"><i class="si si-magnifier"></i></div>
                                        <p class="h4 font-w300 my-20">Нет данных для просмотра</p></div>
                                </div>
                                <?php
                                $query2 = $db->query("SELECT * FROM bit_gateways ORDER BY id");

                                if ($query2->num_rows > 0) { ?>
                                    <ul class="nav-users reserve-ul pull-all">
                                        <?php while ($row = $query2->fetch_assoc()) { ?>
                                            <li data-currency="USD">
                                                <a>
                                                    <img class="img-pay-system"
                                                         src="<?php echo gatewayicon($row['name']); ?>" alt="icon">
                                                    <?php echo $row['name'] . " " . $row['currency']; ?>
                                                    <span class="d-none"><?php echo $row['currency']; ?></span>
                                                    <div class="font-w400 font-size-xs text-muted"><?php echo $row['reserve'] . " " . $row['currency']; ?></div>
                                                </a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                <?php } else { ?>
                                    <div class="col-md-12">
                                        <?php echo $lang['no_have_gateways']; ?>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>

                <div class="col-lg-3"></div>
            </div>
            <!-- row -->
            <div class="row mt-32">
                <!-- product-list -->
                <div class="col-md-12">
                    <!-- trending-ads -->
                    <div class="block block-rounded block-fx-shadow latest-exchanges">
                        <div class="block-header">
                            <div class="block-title">Последние обмены</div>
                        </div>
                        <div class="block-content block-content-full second-widget-content">
                            <div class="table-responsive table-borderless table-striped">
                                <table class="table">
                                    <tbody>
                                    <?php $query = $db->query("SELECT * FROM bit_exchanges ORDER BY id DESC LIMIT 10");
                                    if ($query->num_rows > 0) {
                                        while ($row = $query->fetch_assoc()) { ?>
                                            <tr>
                                                <td><i class="fa fa-calendar mr-10"></i>
                                                </td>
                                                <td>
                                                    <?php echo date("d.m.Y h:i", $row['created']); ?>
                                                </td>
                                                <td>
                                                    <img src="<?php echo gatewayicon(gatewayinfo($row['gateway_send'], "name")); ?>"
                                                         width="20px"
                                                         height="20">
                                                    <i class="fa fa-long-arrow-right mx-10"></i>
                                                    <img src="<?php echo gatewayicon(gatewayinfo($row['gateway_receive'], "name")); ?>"
                                                         width="20px"
                                                         height="20">
                                                    <span class="ml-10">
                                                </span>
                                                </td>
                                                <td>                                                    <?php echo $row['amount_send']; ?><?php echo gatewayinfo($row['gateway_send'], "currency"); ?>
                                                </td>
                                            </tr>
                                        <?php }
                                    } else { ?>
                                        <tr>
                                            <td colspan="5"><?php echo $lang[still_no_exchanges] ?></td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div><!-- product-list -->
            </div><!-- row -->

            <div class="row">
                <div class="col-12">
                    <div class="block block-rounded bg-gray mb-30 latest-reviews">
                        <div class="content">
                            <div class="py-20 nice-copy text-center">
                                <h3 class="h4 font-w400 text-uppercase text-center">
                                    <i class="far fa-comments"></i>
                                    <?php echo $lang['last_testimonials']; ?>
                                </h3>
                                <a class="btn btn-secondary min-width-125" href="/testimonials">
                                    <i class="fa fa-pencil mr-10"></i>
                                    <?php echo $lang['last_testimonials_a']; ?>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php $statement = "bit_testimonials WHERE status='1'";
                $query = $db->query("SELECT * FROM {$statement} ORDER BY id DESC LIMIT 0 , 15");
                if ($query->num_rows > 0) {
                    while ($row = $query->fetch_assoc()) {
                        $gateway_send = exchangeinfo($row['exchange_id'], "gateway_send");
                        $gateway_receive = exchangeinfo($row['exchange_id'], "gateway_receive");
                        $exchange_from = gatewayinfo($gateway_send, "name") . ' ' . gatewayinfo($gateway_send, "currency");
                        $exchange_to = gatewayinfo($gateway_receive, "name") . ' ' . gatewayinfo($gateway_receive, "currency");
                        ?>
                        <div class="col-sm-12 col-md-6 col-xl-4">
                            <div class="block block-rounded block-fx-shadow text-center review">
                                <div class="block-content review-block">
                                    <div class="font-size-h4 font-w400 mb-10"><?php echo $row['name']; ?></div>
                                    <div class="text-muted"><?php echo $row['content']; ?></div>
                                </div>
                                <div class="p-10 bg-body-light text-muted font-size-sm"><i
                                            class="fa fa-calendar mr-10"></i><?php echo date("d,m,Y h:i", $row['time']); ?>
                                </div>
                            </div>
                        </div>
                    <?php }
                } else {
                    echo $lang['no_have_testimonials'];
                } ?>
            </div>
        </div><!-- main-content -->
    </div><!-- container -->
</section><!-- main -->
