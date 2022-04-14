<?php

  /**
   * Patrik Holeš
   * GET 
   * @param string nickname
   * @return Object 
   * curl -X  GET -G http://localhost/holes/pirate-game/web/index.php?action=get_saved_player -d uid=xdadsadsa
  */

  global $db;

  $players = $db->dbSelect(
    "players",
    [
      "where" => [
        "uid" => \Core\Controllers\WebController::getParam("uid")
      ]
    ]
  );

  $lastOnlineUser = [];
  if (!empty($players)) {
    foreach ($players as $player) {
      if (!empty($lastOnlineUser)) {
        if ($lastOnlineUser["last_played"] < $player["last_played"]) {
          $lastOnlineUser = $player;
        }
      } else {
        $lastOnlineUser = $player;
      }
    }
  }

  echo (!empty($lastOnlineUser) ? $lastOnlineUser["nickname"] : "");

  