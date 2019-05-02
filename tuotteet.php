<?php 
include_once 'inc/top.php';
$tuoteryhma_id = 1;

if (isset($_GET['poista'])) {
    unset($_SESSION['kori']);
}

if (isset($_GET['poistaTuote'])) {
    //tähän sql jolla poistetaan tuote;
}

if (isset($_GET['tuoteryhma_id'])) {
    $tuoteryhma_id = filter_input(INPUT_GET,'tuoteryhma_id',FILTER_SANITIZE_NUMBER_INT);
}


if (!isset($_SESSION['kori'])) {
    $_SESSION['kori'] = array();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $tuote_id = filter_input(INPUT_POST,'id',FILTER_SANITIZE_NUMBER_INT);
    array_push($_SESSION['kori'],$tuote_id);
}

?>
<div class="kauppa laatikko2">
<h2>Verkkokauppa</h2>

<?php
if (isset($_SESSION['tunnus']) && $_SESSION['tunnus'] === "admin") {
    print "<div><a href='lisaa.php'>Lisää tuote</a></div>";
    }
    
?>

<div class="dropdown">
     <button class="btn btn-secondary dropdown-toggle namiska" type="button" data-toggle="dropdown">Tuoteryhmät</button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <?php
                $sql = "select * from tuoteryhma order by nimi";
                $kysely = $tietokanta->query($sql);
                while ($tietue = $kysely->fetch()) {
                    print "<a class='dropdown-item tuoter' href='tuotteet.php?tuoteryhma_id=" . $tietue['id'] . "'>" . $tietue['nimi'] . "</a>";
                }
            ?>    
          </div>
</div> 


<div class="row">
<div class="col-sm-8">
<?php
$sql = "select * from tuote where tuoteryhma_id=$tuoteryhma_id";
$kysely = $tietokanta->query($sql);

while ($tietue = $kysely->fetch()) {
    print "<form action='" . $_SERVER['PHP_SELF']  . "' method='post'>";
    print "<input type='hidden' name='id' value='" . $tietue['id'] . "'>";
    print "<h4 class='ostohousut'>" . $tietue['nimi'] . "</h4>";
    print "<p>" . $tietue['hinta'] . "€</p>";
    print "<p><img class='hienojuttu' src='tuoteimg/" . $tietue['id'] . ".jpg' alt='yksi' width='200px' height='200px' /></p>";
    print "<button class='ostassie'>Osta</button>";
    
    if (isset($_SESSION['tunnus']) && $_SESSION['tunnus'] === "admin") {
    print "<button class='ostassie'href='" . $_SERVER['PHP_SELF'] . "?poistaTuote=true'>Poista</button>";
    }
    print "</form>";
}
?>
</div>
<div class="col-sm-4">
    <p class="kori">Ostoskori</p>
    <?php
    if (isset($_SESSION['kori'])) {
        $summa = 0;
        foreach ($_SESSION['kori'] as $tuote_id) {
            //print "$tuote_id<br />";
            $sql = "select * from tuote where id = $tuote_id";
            $kysely = $tietokanta->query($sql);
            $tuote = $kysely->fetch();
            $summa+=$tuote['hinta'];
            print $tuote['nimi'] . ', ' . $tuote['hinta'] . ' €<br /><hr/>';
        }
        print "<p class='kori'>Yhteensä $summa €</p>";
        
        print "<a class='ostoskori' href='" . $_SERVER['PHP_SELF'] . "?poista=true'>Tyhjennä</a>";
        if (count($_SESSION['kori']) > 0) {
            print "<a class='ostoskori' href='tilaa.php'>&nbsp;Tilaa</a>";
        }
    }
    
    ?>
</div>
</div>
</div>
<?php include_once 'inc/bottom.php';?>

