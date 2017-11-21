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
  <h1>Data Takeoff</h1>
  <h3>Penerbangan dari Ahmad Yani</h3>
</div>

<div class="container" style="margin-bottom:50px">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Nomor Ekor</th>
        <th>Pesawat</th>
        <!-- <th>Maskapai</th> -->
        <th>Tujuan</th>
        <th>Penumpang</th>
        <th>Waktu</th>
      </tr>
    </thead>
    <tbody>

    <?php
    include "function/koneksi.php";

    $q = "SELECT p.kode_pesawat, p.nama AS pesawat, CONCAT(b.nama, ', ', b.kota) AS tujuan, t.penumpang, t.waktu
          FROM takeoff t
          INNER JOIN pesawat p
            ON t.kode_pesawat = p.kode_pesawat
          INNER JOIN bandara b
            ON t.tujuan = b.kode_bandara;";
    
    $h = mysqli_query($con, $q);

    while($r = mysqli_fetch_assoc($h)):
    ?>
      <tr>
        <td><?= substr($r['kode_pesawat'], 0, 2) . '-' . substr($r['kode_pesawat'], 2);?></td>
        <td><?= $r['pesawat']; ?></td>
        <!-- <td><?= $r['maskapai']; ?></td> -->
        <td><?= $r['tujuan']; ?></td>
        <td><?= $r['penumpang']; ?></td>
        <td><?= $r['waktu']; ?></td>
      </tr>
    <?php
    endwhile;
    ?>

    </tbody>
  </table>
</div>

</body>
</html>