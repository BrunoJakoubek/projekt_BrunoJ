<?php


$servername = "localhost";
$username = "bruno";
$password = "bruno";
$dbname = "baza";

$dbc = mysqli_connect($servername, $username, $password, $dbname) or die('Error connecting to MySQL server.' . mysqli_error());

$clanak = $_GET["clanak"];

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" type="text/css" href="style.css">
    <title><?php
    $query = "SELECT * FROM vijesti WHERE id=$clanak";
    $result = mysqli_query($dbc, $query);
    while ($row = mysqli_fetch_array($result)) {
      echo $row["naslov"];
      break;
    }
    ?></title>
</head>

<body>
<div class="container">
<header>
    <div class="datum" style="color:white">Sat, May 19, 2019</div>
    <h1>Balkanske V(ij)esti</h1>
    
    
    <nav class="navigacija">
        <ul>
          <li><a href="index.php">Naslovna</a></li>
          <li><a href="kategorija.php?kategorija=hrvatska">Hrvatska</a></li>
          <li><a href="kategorija.php?kategorija=srbija">Srbija</a></li>
          <li><a href="unos.html">Administracija</a></li>
        </ul>
    </nav>
</header>
<hr class="linija">
<div class="section-container">


<section class="clan2">
    
    <?php
    $query = "SELECT * FROM vijesti WHERE id=$clanak";
    $result = mysqli_query($dbc, $query);
    while ($row = mysqli_fetch_array($result)) {
      echo '<section class="clan">';
      echo '<div>';
      echo '<h2 class="opis">' . $row["naslov"] . '</h2>';
      echo '<p class="datumko"> Objavljeno: ' . $row["datum"] . '</p>';
      echo '</div>';

      echo '<img src="' . 'slike/' . $row['slika'] . '">';
      
      echo '<p class="opis">' . $row["sazetak"] . '</p>';
     
      echo '<hr class="linija">';
      
      echo '<p class="sazetak">' . $row["tekst"] . '</p>';
      

      break;
    }
    ?>
</section>

</div>
<hr class="linija">

<footer>
    <p>© 2023 Bruno Jakoubek (bjakoubek@tvz.hr)</p>
  </footer>
</div>

</body>
</html>
