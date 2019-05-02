<?php require_once 'inc/top.php'; ?>
<div>
    <img class="d-sm d-lg-block d-xl-none d-xl-block center" src="img/gorillagamesss.png" alt="">
</div>

<div class="container laatikko">
  <div class="row">
    <div>
      <h1 style="color:white; text-align:center; text-shadow: 2px 2px #ff0000;">GoVRillaGames on täyden viihteen talo joka tarjoaa VR huvituksia kaikenikäisille.</h1>
      <p class="teksti1">Tekeekö mielesi ampua zombeilta päät irti vaiko ajaa rallia? meillä on sinulle ratkaisu ja vieläpä edulliseen hintaan! Olemme auki asiakkaille ma-to 12-22, pe-la 12-24, sekä sunnuntaisin 12-18.</p>
      <button class="button1" onclick="window.location='/tilavuokraus.php'">Varaa</button>
      <p class="teksti1">Meillä on myös myynnissä VR-tuotteita jotka mahdollistavat tämän kaiken hauskuuden kotona. Piipahda siis Verkkokauppaamme alla olevasta linkistä!</p>
      <button class="button1" onclick="window.location='/verkkokauppa.php'">Verkkokauppa</button>
    </div>
  </div>
</div>
<div class="container laatikko">
  <div class="row">
    <div>
      <h2 style="text-align:center; text-shadow: 2px 2px #ff0000;"> Alakerran Rilla-pubin puolella voit käydä nauttimassa maistuvat oman kellari panimomme oluet ja pikkusuolaiset.</h2>
      <h2>
      <p class="teksti1" id="first">Rilla-pubimme aukeaa joka päivä kello 18:00 ja on auki 23:30 asti joka päivä paitsi sunnuntaisin. Rillan erikoisuus on vaihtuva käsityöläisolut, joka on itse panemaamme.</p>
      <p class="teksti1" id="second"> Lisäksi tarjolla on laaja valikoima muita virvokkeita. Voit kysyä myös tarjousta paikan varaamisesta aukioloaikojen ulkopuolelta, mikäli haluat järjestää esimerkiksi yksityistilaisuuden.</p>
      </h2>
    </div>
  </div>
</div>



<div class="container suolanen">
  <div class="row">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
 
    <ol class="carousel-indicators namiskuukkelit">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <div class="carousel-inner suolanen">
      <div class="item active">
        <img src="/img/vr-nainen.jpg" alt="jaska">
        <div class="carousel-caption">
      </div>
    </div>

      <div class="item">
        <img src="/img/tuopit.jpg" alt="tuopit">
        <div class="carousel-caption">
      </div>
    </div>
    
    <div class="item">
        <img src="/img/jarisillispyge.jpg" alt="koodiakka">
        <div class="carousel-caption">
      </div>
    </div>
    
    <div class="item">
        <img src="/img/baaritiski.jpg" alt="tiski">
        <div class="carousel-caption">
      </div>
    </div>

    <div class="item">
      <img src="/img/nainen-koodia.jpg" alt="naine">
        <div class="carousel-caption">
      </div>
    </div>
  </div>
  
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
  
  </div>
  </div>
</div>
<?php require_once 'inc/bottom.php'; ?>