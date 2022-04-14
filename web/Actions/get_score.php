<?php

global $db;

$playerNickname = \Core\Controllers\WebController::getPostParam("playerNickname");

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
