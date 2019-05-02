<?php
require_once 'inc/top.php';
if($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = filter_input(INPUT_POST,'email',FILTER_SANITIZE_EMAIL);
    $tunnus = filter_input(INPUT_POST,'tunnus', FILTER_SANITIZE_STRING);
    $salasana = md5(filter_input(INPUT_POST,'salasana', FILTER_SANITIZE_STRING));
    
    try {
        $sql = "insert into kayttaja (email,tunnus,salasana) values (:email,:tunnus,:salasana)";
        $statement = $tietokanta->prepare($sql);
        $statement->bindValue(':email',$email, PDO::PARAM_STR);
        $statement->bindValue(':tunnus',$tunnus, PDO::PARAM_STR);
        $statement->bindValue(':salasana', $salasana,PDO::PARAM_STR);
        $statement->execute();
        print "<p class='laatikko'>Rekisteröityminen onnistui!</p>";
        exit;
    }
    catch (Exception $ex) {
        print "<p>Rekisteröityminen epäonnistui." . $ex->getMessage() . "</p>";
    }
}
?>
<form class="laatikko rekkari" action="<?php print $_SERVER['PHP_SELF']?>" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label>Sähköpostiosoitteesi</label>
        <input type="email" class="form-control saksanmarkka" name="email" aria-describedby="emailHelp" placeholder="Sähköpostiosoitteesi">
        <small id="emailHelp" class="form-text text-muted">Elä hättäile,ei me jaeta s-postiasi eteenpäin.</small>
    </div>
    <div class="form-group">
        <label>Käyttäjätunnuksesi</label>
        <input type="tunnus" class="form-control saksanmarkka" name="tunnus" aria-describedby="tunnusHelp" placeholder="Tunnuksesi">
        <small id="tunnusHelp" class="form-text text-muted">Elä hättäile, ei me anneta tunnuksiasikaan eteenpäin.</small>
    </div>
    <div class="form-group">
        <label>Salasanasi</label>
        <input type="password" class="form-control saksanmarkka" name="salasana" placeholder="Salasanasi">
    </div>
    <button type="submit" class="btn btn-primary">Tallenna</button>
</form>
<?php
require_once 'inc/bottom.php';
?>