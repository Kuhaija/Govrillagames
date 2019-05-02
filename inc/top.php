<?php
session_start();
session_regenerate_id();
$tietokanta = null;     
try {
    $tietokanta = new PDO('mysql:host=localhost;dbname=verkkokauppa;charset:utf-8','jarisilli','');
} catch (Exception $ex) {
    print "<p>Häiriö tietokantayhteydessä.</p>";                        
}
/*TÄSSÄ JARKON RÄPELLYS LOGINIIN*/

if(isset($_POST['login-submit'])) {
    $tunnus = filter_input(INPUT_POST,'tunnus',FILTER_SANITIZE_STRING);
    $salasana = md5(filter_input(INPUT_POST,'salasana',FILTER_SANITIZE_STRING));
    
    $sql = "select tunnus from kayttaja where tunnus ='$tunnus' and salasana ='$salasana'";
    
    $statement = $tietokanta->query($sql);
    if($statement) {
        $kayttaja = $statement->fetch();
        if($kayttaja) {
            $_SESSION['tunnus'] = $kayttaja['tunnus'];
            $_SESSION['salasana'] = $kayttaja['salasana'];
            header('location:tuotteet.php');
            exit;
        }
        else {
            print "<p class='laatikko'>Incorrect email or password.</p>";
        }
    }
    else {
        print "<p>Error retrieving user account information.</p>";
    }
}

if(isset($_POST['logout-submit'])) {
session_destroy();
header('location:index.php');
exit;
}

/*RÄPELLYS LOPPUU*/
header('Content-Type: text/html; charset=utf-8');
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>GoVRillaGames</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link rel="stylesheet" href="css/tyyli.css">
    </head>
        <body>
        <nav class="navbar navbar-expand-xl navbar-dark navbar-custom">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
            <a class="navbar-brand"></a>
            <span class="navbar-text"><img class="logo2" src="/img/gorillagamesss.png"></img></span>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/index.php">Etusivu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/verkkokauppa.php">Verkkokauppa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/tilavuokraus.php">Varaus</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/yhteystiedot.php">Yhteystiedot</a>
                </li>
            </ul>
            
            <!-- Testikohta alkaa-->
            <?php if (!isset($_SESSION['tunnus'])) {
            ?>
                    <li class="dropdown login navbar-right ">
                        <a class="nav-link " href="#" class="dropdown-toggle" data-toggle="dropdown">Log in </a>
                        <ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu">
                            <div class="col-lg-12">
                                <div class="text-center"><h3><b>Kirjaudu sisään</b></h3></div>
                                <form id="ajax-login-form"  method="post" role="form" autocomplete="off">
                                    <div class="form-group">
                                        <label for="username">Tunnus</label>
                                        <input type="text" name="tunnus" id="tunnus" tabindex="1" class="form-control" placeholder="Username" value="" autocomplete="off">
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Salasana</label>
                                        <input type="password" name="salasana" id="salasana" tabindex="2" class="form-control" placeholder="Password" autocomplete="off">
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-xs-7 rekisteroidy">
                                                    <a id="rekkari" href="/rekisteroidy.php">Rekisteröidy?</a>
                                            </div>
                                            <div class="col-xs-5 pull-right">
                                                <input type="submit" name="login-submit" id="login-submit" tabindex="3" class="form-control btn btn-success" value="Log In">
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" class="hide" name="token" id="token" value="a465a2791ae0bae853cf4bf485dbe1b6">
                                </form>
                            </div>
                        </ul>
                    </li>
                    <?php
            } else {
            ?>
            <li class="dropdown login navbar-right ">
                        <a class="nav-link " href="#" class="dropdown-toggle" data-toggle="dropdown"><?php print "<p>" . ($_SESSION['tunnus']) . "</p>" ?> </a>
                        <ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu">
                            <div class="col-lg-12">
                                <div class="text-center"><h4><b>Kirjaudu ulos</b></h4></div>
                                <form id="ajax-login-form"  method="post" role="form" autocomplete="off">
                                            <div class="col-xs-5 pull-right">
                                                <input type="submit" name="logout-submit" id="logout-submit" tabindex="1" class="form-control btn btn-success" value="Log Out">
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" class="hide" name="token" id="token" value="a465a2791ae0bae853cf4bf485dbe1b6">
                                </form>
                            </div>
                        </ul>
                    </li>
                    <?php
            }
                ?>
                
            <!-- Testikohta päättyy-->
            
            </div>
            </div>
        </nav>
            <!--video ja musaa.-->
           <video autoplay loop id="video-background" muted plays-inline>
              <source src="/video/Future.mp4" type="video/mp4">
            </video>
 
        
        <div class="container">
            <div class="row">
                <div class="col">