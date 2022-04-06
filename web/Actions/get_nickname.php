<?php

global $db;

$uid = \Core\Controllers\WebController::getPostParam("uid");

$ifExists = $db->dbSelect(
  "players",
  [
    "where" => [
      "uid" => $uid 
    ]
  ]
);

if (!empty($ifExists)) {
  echo reset($ifExists)['nickname'];
  exit();
} else {
  $lastPlayerId = $db->getLastItem("players");

  if ($lastPlayerId == NULL) {
    $lastPlayerId = 0;
  } else {
    $lastPlayerId = $lastPlayerId['id'];
  }

  $db->insert_array([
    'table' => "players",
    'table_data' => [
      "nickname" => "Pirat-" . ($lastPlayerId + 1),
      "score" => 50,
      "uid" => $uid
    ]
  ]);

  echo "Pirat-" . ($lastPlayerId + 1);
  exit();
}