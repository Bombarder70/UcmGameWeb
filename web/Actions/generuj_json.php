<?php

global $db;

header("Cache-Control: public");
header("Content-Description: File Transfer");
header("Content-Disposition: attachment; filename=test.json");
header("Content-Transfer-Encoding: binary");
header("Content-Type: binary/octet-stream");

$id = \Core\Controllers\WebController::getParam("id");

$data = $db->dbSelect(
  "generator",
  [
    "where" => [
      "id" => $id
    ]
  ]
);

\Core\Controllers\WebController::getJson($data);
die();