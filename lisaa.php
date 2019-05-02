<?php
require_once 'inc/top.php';

if ($_SERVER['REQUEST_METHOD']==='POST'){
    $nimi = filter_input(INPUT_POST,'nimi',FILTER_SANITIZE_STRING);
    $hinta = filter_input(INPUT_POST,'hinta', FILTER_SANITIZE_NUMBER_FLOAT,FILTER_FLAG_ALLOW_FRACTION);
    $tuoteryhma_id = filter_input(INPUT_POST,'tuoteryhma_id', FILTER_SANITIZE_NUMBER_FLOAT);
    $target_dir = "tuoteimg/";
    $kuva = $target_dir . basename($_FILES["kuva"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($kuva,PATHINFO_EXTENSION));
    

    try {
        $sql = "insert into tuote (nimi,hinta,tuoteryhma_id) values (:nimi,:hinta,:tuoteryhma_id)";
        $statement = $tietokanta->prepare($sql);
        $statement->bindValue(':nimi',$nimi, PDO::PARAM_STR);
        $statement->bindValue(':hinta',$hinta, PDO::PARAM_STR);
        $statement->bindValue(':tuoteryhma_id', $tuoteryhma_id,PDO::PARAM_STR);
        $statement->execute();
        $tietokanta->exec($sql);
        $last_id = $tietokanta->lastInsertId();
        $kuvannimi = $last_id;
        print "<p class='laatikko'>Tuotteen lisäys onnistui!</p>";
        
    }
    catch (Exception $ex) {
        print "<p class='laatikko'>Tuotteen lisäys epäonnistui." . $ex->getMessage() . "</p>";
    }
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" ) {
        print "<p class='laatikko'>Pahoittelut, ainoastaan JPG, JPEG, PNG & GIF tiedostot on hyväksyttyjä.</p>";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        print "<p class='laatikko'>Pahoittelut, tiedoston lataus epäonnistui.</p>";
    // if everything is ok, try to upload file
    } else {
        $temp = explode(".", $_FILES["kuva"]["name"]);
        $newfilename = $kuvannimi . '.' . end($temp);
        
        
        if (move_uploaded_file($_FILES["kuva"]["tmp_name"], $target_dir . $newfilename)) {
            print "<p class='laatikko'>Tiedosto ". basename( $_FILES["kuva"]["name"]). " on ladattu palvelimelle.</p>";
        } else {
            print "<p class='laatikko'>Pahoittelut, tiedoston latauksessa tapahtui virhe.</p>";
        }
    }
}





?>


<form class="laatikko " action="<?php $_SERVER['PHP_SELF'] ?>" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label>Tuotteen nimi</label>
        <input type="text" class="form-control saksanmarkka" name="nimi" aria-describedby="nimiHelp" placeholder="Tuotteen nimi">
    </div>
    <div class="form-group">
        <label>Tuotteen hinta</label>
        <input type="number" step="0.01" class="form-control saksanmarkka" name="hinta" aria-describedby="hinta" placeholder="Tuotteen hinta">
    </div>
    <div class="form-group">
        <label>Tuoteryhmä</label>
        <input type="number" max="3" class="form-control saksanmarkka" name="tuoteryhma_id" placeholder="Tuoteryhmän id">
        <small id="tuoteryhma_id" class="form-text text-muted">1 = VR-Lasit, 2 = Oheistuotteet ja 3 = Käytetyt laitteet</small>
    </div>
    <div class="form-group">
        <label>Tuotteen kuva</label>
        <input type="file" class="form-control" name="kuva" id="kuva">
    </div>
    <button type="submit" class="btn btn-primary">Tallenna</button>
</form>

<?php
require_once 'inc/bottom.php';
?>