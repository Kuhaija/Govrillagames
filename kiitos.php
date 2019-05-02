<?php require_once 'inc/top.php'; 
$etunimi=$_SESSION['etunimi'];
$sukunimi=$_SESSION['sukunimi'];
$email=$_SESSION['email'];
?>

<div class="container laatikko2">
<h2>Kiitos tilauksestasi!</h2>


<?php
print "<p>" . $etunimi . " " .$sukunimi. " " .$email. " </p>";
?>
<p>Tilasit:</p>
<?php foreach ($_SESSION['kori'] as $tuote_id) {
    $sql = "select * from tuote where id = $tuote_id";
    $kysely = $tietokanta->query($sql);
    $tuote = $kysely->fetch();
    $summa+=$tuote['hinta'];
    print $tuote['nimi'] . ', ' . $tuote['hinta'] . ' €<br /><hr/>';
            
    } 
    print "<p class='kori'>Tilauksesi yhteensä $summa €</p>";
    unset($_SESSION['kori']);
    ?>
        
        
</div>

<?php
session_destroy();
require_once 'inc/bottom.php'; ?>