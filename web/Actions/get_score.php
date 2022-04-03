<?php

  global $db;

  $lastPlayerId = $db->getLastItem("players")["id"];

  $db->insert_array([
    'table' => "players",
    'table_data' => [
      "nickname" => "Player_" . ($lastPlayerId + 1),
      "score" => 50
    ]
  ]);

  /*$response = $db->dbSelect(
    "players",
    [
      "where" => [
        "id" => 1 // Nas pirat2
      ]
    ]
  );*/

  $playerData = $db->getLastItem("players");

  echo $playerData['score'];