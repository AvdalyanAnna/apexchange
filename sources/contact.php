<?php
if (isset($_POST['bit_send'])) {
    $name = protect($_POST['name']);
    $email = protect($_POST['email']);
    $subject = protect($_POST['subject']);
    $message = protect($_POST['message']);

    if (empty($name) or empty($email) or empty($subject) or empty($message)) {
        echo error($lang['error_1']);
    } elseif (!isValidEmail($email)) {
        echo error($lang['error_2']);
    } else {
        $msubject = '[' . $settings[name] . '] ' . $subject;
        $mreceiver = $settings['supportemail'];
        $headers = 'From: ' . $mreceiver . '' . "\r\n" .
            'Reply-To: ' . $email . '' . "\r\n" .
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

    <div class="bg-body-dark">
        <div class="row justify-content-center p-15">
            <div class="col-lg-8">
                <h3 class="font-w400"> <?php echo $lang['contact']; ?> </h3>
                <div class="mb-20"></div>
                <form action="" method="post">
                    <div class="form-group">
                        <label><?php echo $lang['your_name']; ?> </label>
                        <input type="text" class="form-control" name="name" value=""
                               placeholder="<?php echo $lang['your_name']; ?>">
                    </div>
                    <div class="form-group">
                        <label><?php echo $lang['your_email']; ?> </label>
                        <input type="text" class="form-control" name="email" data-action="toLowerCase"
                               placeholder="<?php echo $lang['your_email']; ?>">
                    </div>
                    <div class="form-group">
                        <label><?php echo $lang['subject']; ?></label>
                        <input type="text" class="form-control" name="subject" data-action="toLowerCase"
                               placeholder="<?php echo $lang['subject']; ?>">
                    </div>
                    <div class="form-group">
                        <label><?php echo $lang['message']; ?></label>
                        <textarea class="form-control" rows="10" name="message"
                                  placeholder="<?php echo $lang['message']; ?>"></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-secondary btn-hero" name="bit_send">
                            <i class="fa fa-send mr-10"></i>
                            <?php echo $lang['btn_send_message']; ?>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


