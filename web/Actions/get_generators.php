<?php

global $db;

$generators = $db->dbSelect(
  "generators",
  [
    "select" => "id, name"
  ]
);

echo json_encode($generators);

