<?php

  global $db;

  $idGenerator = 1; // testovacie

  $response = $db->dbSelect(
    "generator",
    [
      "where" => [
        "id" => $idGenerator // testovacie
      ]
    ]
  );

  $response = reset($response);

  // Vyber konkrtneho hraca
  $players = $db->dbSelect(
    "players",
    [
      "where" => [
        "nickname" => \Core\Controllers\WebController::getParam("playerNickname")
      ]
    ]
  );

  $player = reset($players);

  // Vyber struktury
  $playersGenerators = $db->dbSelect(
    "players_generators",
    [
      "where" => [
        "id_player" => $player["id"],
        "id_generator" => $idGenerator
      ]
    ]
  );

  // Ak hrac este nehral tuto variantu
  if (empty($playersGenerators)) {
    $db->insert_array([
      'table' => "players_generators",
      'table_data' => [
        "id_player" => $player["id"],
        "id_generator" => $idGenerator,
        "structure" => $response['structure']
      ]
    ]);

    $playerCurrentQuests = $db->getLastItem("players_generators");
  } else {
    $playerCurrentQuests = reset($playersGenerators);
  }


  echo $playerCurrentQuests['structure'];