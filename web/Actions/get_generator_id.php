<?php

global $db;

$name = \Core\Controllers\WebController::getParam("generatorName");

$generators = $db->dbSelect(
  "generator",
  [
    "where" => [
      "name" => $name
    ]
  ]
);

$generators = reset($generators);

echo $generators["id"];

