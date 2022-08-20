<h3>Forgot password?</h3>
<hr />
<?php
if(isset($_POST['bit_reset'])) {
	$email = protect($_POST['email']);
	$check = $db->query("SELECT * FROM bit_users WHERE email='$email'");
	if(empty($email)) { echo error("Пожалуйста, введите свой адрес электронной почты."); }
	elseif($check->num_rows==0) { echo error("Нет такого пользователя с этим адресом электронной почты."); }
	else {
		$row = $check->fetch_assoc();
		$randomHash = randomHash(13);
		$email = $row['email'];
		$update = $db->query("UPDATE bit_users SET password_recovery='$randomHash' WHERE id='$row[id]'");
		$msubject = '['.$settings[name].'] Забыл пароль';
		$mreceiver = $email;
		$message = 'Привет, '.$email.'

	Вы запрашиваете изменение пароля, используйте ссылку ниже, чтобы заменить его. Если вы этого не сделали, вы просто игнорируете.
	'.$settings[url].'password/change/'.$randomHash.'

Если у вас есть какие-то проблемы, пожалуйста, свяжитесь с нами по'.$settings[supportemail];
		$headers = 'From: '.$settings[infoemail].'' . "\r\n" .
			'Reply-To: '.$settings[infoemail].'' . "\r\n" .
			'X-Mailer: PHP/' . phpversion();
		$mail = mail($mreceiver, $msubject, $message, $headers);
		if($mail) {
			echo success("Мы отправили вам электронное письмо с подтверждением. Проверьте свой почтовый ящик или папку со спамом.");
		} else {
			echo error("Ошибка отправки электронной почты. Пожалуйста, попробуйте позже.");
		}
	}
} else {
	echo info("Пожалуйста, введите свой адрес электронной почты в форму ниже, чтобы отправить вам ссылку для сброса пароля.");
}
?>

<form action="" method="POST">
  <div class="form-group">
    <label>Email адрес</label>
    <input type="text" class="form-control input-lg form_style_1" name="email">
  </div>
  <button type="submit" class="btn btn-primary btn-lg" name="bit_reset"><i class="fa fa-check"></i> Перезагрузить</button>
</form>