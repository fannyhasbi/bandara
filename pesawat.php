<!DOCTYPE html>
<html>
<head>
  <title>Bandar Internasional Ahmad Yani</title>
  <meta charset="utf-8">

  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigasi">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="<?= 'http://localhost/bandara'?>" class="navbar-brand">Ahmad Yani</a>
    </div>
    <div class="collapse navbar-collapse" id="navigasi">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="pesawat.php">Pesawat</a></li>
        <li><a href="bandara.php">Bandara</a></li>
        <li><a href="takeoff.php">Data Takeoff</a></li>
        <li><a href="landing.php">Data Landing</a></li>
        <li><a href="login.php">Masuk <i class="fa fa-sign-in"></i></a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center">
  <h1>Data Pesawat</h1>
  <h3>Pesawat pernah singgah</h3>
</div>

<div class="container" style="margin-bottom:50px">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Nomor Ekor</th>
        <th>Nama Pesawat</th>
        <th>Maskapai</th>
        <th>Singgah</th>
      </tr>
    </thead>
    <tbody>

    <?php
    include "function/koneksi.php";

    $q = "SELECT p.kode_pesawat AS kode, p.nama, m.nama as maskapai,
                 ((SELECT COUNT(id_to) FROM takeoff WHERE kode_pesawat = kode) + (SELECT COUNT(id_lnd) FROM landing WHERE kode_pesawat = kode)) AS singgah
          FROM pesawat p 
          INNER JOIN maskapai m 
            ON p.kode_maskapai = m.kode_maskapai";
    $h = mysqli_query($con, $q);

    while($r = mysqli_fetch_assoc($h)):
    ?>
      <tr>
        <td><?= $r['kode'];?></td>
        <td><?= $r['nama']; ?></td>
        <td><?= $r['maskapai']; ?></td>
        <td><?= $r['singgah']; ?></td>
      </tr>
    <?php
    endwhile;
    ?>

    </tbody>
  </table>
</div>

</body>
</html>