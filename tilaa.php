<?php
include_once 'inc/top.php';
?>
<style>
    label,button {display: block;}
</style>
<div class="container laatikko2">
    <h2>Tilaa</h2>
    <form action="tallenna.php" method="post">
        <div>
        <label>Etunimi</label>
            <input type="text" class="form-control saksanmarkka" name="etunimi" id="etunimi" maxlength="100" placeholder="Etunimi">
        </div>
        <div>
        <label>Sukunimi</label>
            <input type="text" class="form-control saksanmarkka" name="sukunimi" id="sukunimi" maxlength="100" placeholder="Sukunimi">
        </div>
        <div>
        <label>Sähköposti</label>
            <input type="email" class="form-control saksanmarkka" name="email"  id="email" placeholder="Sähköposti">
        </div>
        <button type="button" onclick="window.location='/kiitos.php'" class="btn btn-primary tilausnamiska">Tilaa</button>
    </form>
</div>
<?php
    $etunimi = filter_input(INPUT_POST,'etunimi',FILTER_SANITIZE_STRING);
    $sukunimi = filter_input(INPUT_POST,'sukunimi',FILTER_SANITIZE_STRING);
    $email = filter_input(INPUT_POST,'email',FILTER_SANITIZE_EMAIL);
        
    $_SESSION['etunimi']=$etunimi;
    $_SESSION['sukunimi']=$sukunimi;
    $_SESSION['email']=$email;
        
        
    print "<p>" . $etunimi . " " .$sukunimi. " " .$email. " </p>";
        
include_once 'inc/bottom.php';
?>