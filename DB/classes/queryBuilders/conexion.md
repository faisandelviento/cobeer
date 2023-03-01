<?php
//CONEXION
$dbhost = '';
$dbuser = 'root';
$dbpass = '';
$dbname = 'cobeer';
$dbh = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
if ($dbh->connect_error) {
    // echo "Error de Connexion ($dbh->connect_errno)
    // $dbh->connect_error\n";
    exit;
}
if ($dbh->connect_errno) {
    // echo "Error de Connexion ($dbh->connect_errno)
    // $dbh->connect_errno\n";
    exit;
}
?>