<?php

global $db;

header("Cache-Control: public");
header("Content-Description: File Transfer");
header("Content-Disposition: attachment; filename=test.json");
header("Content-Transfer-Encoding: binary");
header("Content-Type: binary/octet-stream");

echo json_encode(['xxx'=> 'xxx']);
die();