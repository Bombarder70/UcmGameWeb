<?php
  global $db;
  
  $idPlayerGenerator = \Core\Controllers\WebController::getPostParam("idPlayerGenerator");
  $x = \Core\Controllers\WebController::getPostParam("position_x");
  $y = \Core\Controllers\WebController::getPostParam("position_y");
  $z = \Core\Controllers\WebController::getPostParam("position_z");

  $db->update(
    "players_generators",
    $idPlayerGenerator,
    [
      "last_position" => "{$x};{$y};{$z};"
    ]
  );

?>