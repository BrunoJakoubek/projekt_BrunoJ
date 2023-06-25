<?php

$servername = "localhost";
$username = "bruno";
$password = "bruno";
$dbname = "baza";

$dbc = mysqli_connect($servername, $username, $password, $dbname) or die('Error connecting to MySQL server.' . mysqli_error());



$kategorija = $_GET["kategorija"];

?>

<!DOCTYPE html>
<html lang="hr">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" type="text/css" href="style.css" />
  <title>
    <?php echo ucfirst($kategorija); ?>
  </title>
</head>

<body>
<div class="container">
<header>
    <div class="datum">Subota, 24. Lipanj</div>
    <h1>Balkanske V(ij)esti</h1>
    
    <nav class="navigacija">
        <ul>
          <li><a href="index.php" class="active">Naslovna</a></li>
          <li><a href="kategorija.php?kategorija=hrvatska">Hrvatska</a></li>
          <li><a href="kategorija.php?kategorija=srbija">Srbija</a></li>
          <li><a href="unos.html">Administracija</a></li>
        </ul>
    </nav>
</header>
<hr class="linija">
<div class="section-container">
<section class="news">
<h4 class="hhh"><?php echo ucfirst($kategorija);?></h4>
<?php
      $query = "SELECT * FROM vijesti WHERE kategorija='$kategorija' AND arhiva = 1 ORDER BY id DESC";

      $result = mysqli_query($dbc, $query);

      while ($row = mysqli_fetch_array($result)) {
        echo '<article>';
        echo '<div class="image-container">';
        echo '<a class="slink" href="clanak.php?clanak=' . $row["id"] . '"><img src="' .'slike/'. $row['slika'] . '">';
        echo '</div>';
        echo '<h2>' . $row["naslov"] . '</h2>';
        echo '<p class="tetekst">' . $row["sazetak"] . '</p></a>';
        echo '</article>';
        continue;
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