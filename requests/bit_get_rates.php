<?php
ob_start();
session_start();
error_reporting(0);
include("../includes/config.php");
$db = new mysqli($CONF['host'], $CONF['user'], $CONF['pass'], $CONF['name']);
if ($db->connect_errno) {
    echo "Failed to connect to MySQL: (" . $db->connect_errno . ") " . $db->connect_error;
}
$db->set_charset("utf8");
$coin_id = $_POST['coin_id'];
$query = $db->query("SELECT * FROM bit_rates where gateway_from='$coin_id'");
$ids = [];

if($query->num_rows>0) {
    while ($row = $query->fetch_assoc()){
        $ids[] = $row['gateway_to'];
    };
}
echo json_encode($ids);