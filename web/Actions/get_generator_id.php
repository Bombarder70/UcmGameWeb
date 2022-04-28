<?php

global $db;

$name = \Core\Controllers\WebController::getParam("generatorName");
$playerName = \Core\Controllers\WebController::getParam("playerName");
$idRoom = \Core\Controllers\WebController::getParam("idRoom");

$returnValues = [];

$players = $db->dbSelect(
  "players",
  [
    "where" => [
      "nickname" => $playerName
    ]
  ]
);

$player = reset($players);

$generators = $db->dbSelect(
  "generator",
  [
    "where" => [
      "name" => $name,
      "id_room" => $idRoom
    ],
    "order_by" => "id DESC",
    "limit" => "1"
  ]
);

$generators = reset($generators);

$playersGenerators = $db->dbSelect(
  "players_generators",
  [
    "where" => [
      "id_player" => $player["id"]
    ]
  ]
);

if (!empty($playersGenerators)) {
  $playerGenerator = reset($playersGenerators);

  $lastPosition = $playerGenerator["last_position"];
  unset($playerGenerator["last_position"]);

  if ($lastPosition != null) {
    $lastPosition = explode(";", $lastPosition);
  } else {
    $lastPosition[0] = 0;
    $lastPosition[1] = 0;
    $lastPosition[2] = 0;
  }

  $returnValues = [
    "idPlayer" => $player["id"],
    "idPlayerGenerator" => $playerGenerator["id"],
    "idGenerator" => $playerGenerator["id_generator"],
    "lastPositionX" => $lastPosition[0],
    "lastPositionY" => $lastPosition[1],
    "lastPositionZ" => $lastPosition[2]
  ];
} else {
  $idPlayerGenerator = $db->insert_array([
    'table' => "players_generators",
    'table_data' => [
      "id_player" => $player["id"],
      "id_generator" => $generators["id"],
      "structure" => $generators["structure"]
    ]
  ]);

  $returnValues = [
    "idPlayer" => $player["id"],
    "idPlayerGenerator" => $idPlayerGenerator,
    "idGenerator" => $generators["id"],
    "lastPositionX" => 0,
    "lastPositionY" => 0,
    "lastPositionZ" => 0
  ];
}

echo json_encode($returnValues);

