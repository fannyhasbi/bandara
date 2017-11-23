<?php

function purify($stmt){
  global $con;
  $fix   = trim($stmt);
  $fix2  = stripslashes($fix);
  $fix3  = htmlspecialchars($fix2);
  return mysqli_real_escape_string($con, $fix3);
}