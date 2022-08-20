<?php
if (isset($_POST['testimonials'])) {
    $name = protect($_POST['name']);
    $email = protect($_POST['email']);
    $content = protect($_POST['message']);
    $time = time();
    if (empty($name)) {
        echo error($lang['error_7']);
    } elseif (empty($email)) {
        echo error($lang['error_8']);
    } elseif (empty($content)) {
        echo error($lang['error_8']);
    } else {
        $insert = $db->query("INSERT bit_testimonials (name,email,status,time,content) VALUES ('$name','$email','0','$time','$content')");
        echo success($lang['success_5']);
    }
}
?>

<div class="content reviews-content">
    <div class="bg-body-dark">
        <div class="row justify-content-center p-15">
            <div class="col-lg-8">
                <div class="mb-30"><h3 class="font-w400">Оставить отзыв</h3>
                    <form action="#" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Имя пользователя</label>
                                    <input type="text" class="form-control" name="name"
                                           placeholder="Имя пользователя">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Электронная почта</label>
                                    <input type="text" class="form-control" name="email"
                                           data-action="toLowerCase" placeholder="Электронная почта">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Текст</label>
                            <textarea class="form-control mb-5" rows="5" name="message"
                                      placeholder="Текст"></textarea>
                        </div>
                        <button type="submit" class="btn btn-secondary btn-hero" name="testimonials">
                            <i class="fas fa-star-half-alt"></i>
                            Отправить
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content">
    <?php
    $page = (int)(!isset($_GET["page"]) ? 1 : $_GET["page"]);
    $limit = 15;
    $startpoint = ($page * $limit) - $limit;
    if ($page == 1) {
        $i = 1;
    } else {
        $i = $page * $limit;
    }
    $statement = "bit_testimonials WHERE status='1'";
    $query = $db->query("SELECT * FROM {$statement} ORDER BY id DESC LIMIT {$startpoint} , {$limit}");
    ?>
    <div class="mb-20">
        <div class="block-header">
            <div class="block-title"><?php echo $lang['testimonials']; ?>
                <?php if ($query->num_rows > 0) { ?>
                    <span class="badge badge-pill badge-info ml-5 font-size-h6"><?php echo $query->num_rows ?></span>
                <?php } ?>
            </div>
        </div>
    </div>
    <div class="row">
        <?php if ($query->num_rows > 0) {
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
                        <div class="p-10 bg-body-light text-muted font-size-sm"><i class="fa fa-calendar mr-10"></i><?php echo date("d,m,Y h:i", $row['time']); ?>
                        </div>
                    </div>
                </div>
            <?php }
        } else {
            echo $lang['no_have_testimonials'];
        }
        $ver = $settings['url'] . "testimonials";
        if (web_pagination($statement, $ver, $limit, $page)) {
            echo web_pagination($statement, $ver, $limit, $page);
        } ?>
    </div>
</div>