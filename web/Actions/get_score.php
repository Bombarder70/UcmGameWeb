<?php

global $db;

$playerNickname = \Core\Controllers\WebController::getPostParam("playerNickname");

if ($playerNickname != "") {
  $player = $db->dbSelect(
    "players",
    [
      "where" => [
        "nickname" => $playerNickname
      ]
    ]
  );

  $player = reset($player);

  echo $player["score"];
} else echo 50;
