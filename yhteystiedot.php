<?php require_once 'inc/top.php'; ?>
<?php
// määritellään muuttujat ja tyhjät arvot
$name_error = $email_error = $phone_error = "";
$name = $email = $phone = $message = $success = "";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $name_error = "Nimi on pakollinen";
  } else {
    $name = test_input($_POST["name"]);
    // tarkistetaan että nimi sisältää vain sallittuja välimerkkejä
    if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      $name_error = "Vain kirjaimia ja välilyöntejä"; 
    }
  }

  if (empty($_POST["email"])) {
    $email_error = "Sähköposti on pakollinen";
  } else {
    $email = test_input($_POST["email"]);
    // tarkistetaan että sähköposti on oikeassa muodossa
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $email_error = "Väärä sähköpostiosoite"; 
    }
  }
  
  if (empty($_POST["phone"])) {
    $phone_error = "Puhelinnumero on pakollinen";
  } else {
    $phone = test_input($_POST["phone"]);
    // tarkistetaan, että numero on oikein
    if (!preg_match("/^(\d[\s-]?)?[\(\[\s-]{0,2}?\d{3}[\)\]\s-]{0,2}?\d{3}[\s-]?\d{4}$/i",$phone)) {
      $phone_error = "Väärä puhelinnumero"; 
    }
  }

  if (empty($_POST["message"])) {
    $message = "";
  } else {
    $message = test_input($_POST["message"]);
  }
  
  if ($name_error == '' and $email_error == '' and $phone_error == '' ){
      $message_body = '';
      unset($_POST['submit']);
      foreach ($_POST as $key => $value){
          $message_body .=  "$key: $value\n";
      }
      
      $to = 'andregoldentouch@gmail.com';
      $subject = 'Contact Form Submit';
      if (mail($to, $subject, $message)){
          $success = "Viesti lähetetty, kiitos yhteydenotostasi!";
          $name = $email = $phone = $message = '';
      }
  }
  
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>


<div class="container laatikko">
  <a href="#noscroll" id="togglebgm">toggle sound</a>
  <div class="row">
      <div class="col-9">
          <div class="pazka">
          <h1>Yhteystiedot</h1>
          <h3>Juha Säkkinen</h3><h4>n8saju00@students.oamk.fi<br>Puh. 044 232 131 241</h4>
          <h3>Henri Viitanen</h3><h4>n7vihe00@students.oamk.fi<br>Puh. 044 232 131 241</h4>
          <h3>Jarkko Kuha</h3><h4>n8kuja00@students.oamk.fi<br>Puh. 044 232 131 241</h4>
          <h3>Oula Kumpula</h3><h4>n8kuou00@students.oamk.fi<br>Puh. 044 232 131 241</h4>
          </div>
          <div class="pazka col-6">
              <img class="YTkuva" src="/img/slut.jpg" alt="pöö" title="haloo"/>
          </div>
      </div>
            <div class="container">  
  <form id="contact" action="<?= $_SERVER['PHP_SELF']; ?>" method="post">
    <h3>Yhteydenotto</h3>
    <h4>Laita viesti meille</h4>
    <fieldset>
      <input class="saksanmarkka"  placeholder="Nimesi" type="text" tabindex="1" name="name" value="<?= $name ?>">
      <span class="error"><?= $name_error?></span>
    </fieldset>
    <fieldset>
      <input class="saksanmarkka" placeholder="Sähköpostiosoitteesi" type="text" name="email" value="<?= $email ?>" tabindex="2">
      <span class="error"><?= $email_error?></span>
    </fieldset>
    <fieldset>
      <input class="saksanmarkka" placeholder="Puhelinnumerosi" type="text" name="phone" value="<?= $phone ?>" tabindex="3">
      <span class="error"><?= $phone_error?></span>
    </fieldset>
    <fieldset>
      <textarea class="saksanmarkka2" placeholder="Viestisi...." type="text" name="message" value="<?= $message ?>" tabindex="4"></textarea>
    </fieldset>
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Lähetä</button>
    </fieldset>
    <div class ="success"><?= $succees; ?> </div>
  </form>
 
  
</div>

  </div>
</div>

<div class="google-maps">
    <iframe width="1080" height="370" id="gmap_canvas" src="https://maps.google.com/maps?q=Kauppurienkatu%2010&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
</div>

<audio id="audio_bgm" autoplay="autoplay" loop="true">
<source src="/elämältäkaikensain/bensound-sexy.mp3" />
</audio>
            


<?php require_once 'inc/bottom.php'; ?>