<?php


$servername = "localhost";
$username = "bruno";
$password = "bruno";
$dbname = "baza";

$dbc = mysqli_connect($servername, $username, $password, $dbname) or die('Error connecting to MySQL server.' . mysqli_error());

if (isset($_POST['submit'])) {
    $naslov = $_POST['naslov'];
    $sazetak = $_POST['sazetak'];
    $tekst = $_POST['tekst'];
    $slika = $_FILES['slika']['name'];
    $kategorija = $_POST['kategorija'];
    $datum = date('d.m.Y.');

    if (isset($_POST['prikazi'])) {
      $prikazi = 1;
    } else {
      $prikazi = 0;
    }

    
    $targDir = $slika;
    move_uploaded_file($_FILES["slika"]["tmp_name"], $targDir);

    $query = "INSERT INTO vijesti (naslov, sazetak, tekst, slika, kategorija, arhiva, datum) VALUES ('$naslov', '$sazetak', '$tekst', '$slika', '$kategorija', '$prikazi', '$datum')";
    $result = mysqli_query($dbc, $query) or die('Error querying database.');
    
    mysqli_close($dbc);
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>Post Data</title>
</head>
<body>
<div class="container">
<header>
    <div class="datum">Subota, 24. Lipanj</div>
    <h1>Balkanske Vijesti</h1>
    
    <nav class="navigacija">
        <ul>
          <li><a href="index.html" class="active">Naslovna</a></li>
          <li><a href="kategorija.php?kategorija=politika">Hrvatska</a></li>
          <li><a href="kategorija.php?kategorija=sport">Srbija</a></li>
          <li><a href="administracija.php">Administracija</a></li>
        </ul>
    </nav>
</header>
<hr class="linija">
<div class="section-container">
<section>
<?php
    echo '<section>';
    echo '<div>';
    echo '<h2 class="naslovcic">' . $naslov . '</h2>';
    echo '<p>Objavljeno: ' . $datum . '</p>';
    echo '</div>';

    echo '<section>';
    echo '<img src="slike/' . $slika . '">';
    echo '</section>';
    echo '<section>';
    echo '<p class="sazetak">' . $sazetak . '</p>';
    echo '</section>';
    echo '<section class="clan">';
    echo '<article>';
    echo '<p>' . $tekst . '</p>';
    echo '<article>';
    echo '</section>';
    echo '</section>';
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
