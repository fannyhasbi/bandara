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
  <h1>Data Bandara</h1>
  <h3>Bandara tujuan dan asal</h3>
</div>

<div class="container" style="margin-bottom:50px">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Nama Bandara</th>
        <th>Kota</th>
        <th>Negara</th>
      </tr>
    </thead>
    <tbody>

    <?php
    include "function/koneksi.php";

    $q = "SELECT * FROM bandara";
    $h = mysqli_query($con, $q);

    while($r = mysqli_fetch_assoc($h)):
    ?>
      <tr>
        <td><?= $r['nama'];?></td>
        <td><?= $r['kota']; ?></td>
        <td><?= $r['negara']; ?></td>
      </tr>
    <?php
    endwhile;
    ?>

    </tbody>
  </table>
</div>

</body>
</html>