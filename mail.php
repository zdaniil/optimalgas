<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

  if (isset($_POST['metka'])) {

    if (isset($_POST['name'])) {$name = $_POST['name'];}
    if (isset($_POST['email'])) {$email = $_POST['email'];}
    if (isset($_POST['tema'])) {$tema = $_POST['tema'];}
    if (isset($_POST['phone'])) {$phone = $_POST['phone']; $tema = 'Перезвоните мне.';}
    if (isset($_POST['enquiry'])) {$message = $_POST['enquiry'];}
    if (isset($_POST['formData'])) {$formData = $_POST['formData'];}


    $to = "optimalgas@mail.ru"; /*Укажите адрес, на который должно приходить письмо*/
    $sendfrom   = "optimalgas.com.ua"; /*Укажите адрес, с которого будет приходить письмо, можно не настоящий, нужно для формирования заголовка письма*/
    $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
    $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html;charset=utf-8 \r\n";
    $subject = "$formData";
    $message = "$formData<br> <b>Вопрос от:</b> $name <br><b>Почта:</b> $email <br>  <br><b>Телефон:</b> $phone <br> 
    <b>Тема:</b> $tema <br> <b>Вопрос:</b> $message";
    
    $send = mail ($to, $subject, $message, $headers);
      }
    if ($send == 'true')

    {
    echo '<center><p class="success">'.$name.' Спасибо за отправку вашего сообщения!</p></center>';
    }
    else 
    {
    echo '<center><p class="fail"><b> Ошибка. Сообщение не отправлено!</b></p></center>';
    }

} else {
    http_response_code(403);
    echo "Попробуйте еще раз";
}
?>