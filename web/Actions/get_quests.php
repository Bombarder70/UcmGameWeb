<?php

  /**
   * Patrik Holeš
   * GET 
   * @param string idGenerator
   * @param string playerNickname
   * @return Object 
   * curl -X GET -G http://localhost/holes/pirate-game/web/index.php?action=get_quests -d idGenerator=1 -d playerNickname=Pirat-2
  */

  global $db;

  $response = $db->dbSelect(
    "generator",
    [
      "where" => [
        "id" => \Core\Controllers\WebController::getParam("idGenerator")
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
        "id_generator" => \Core\Controllers\WebController::getParam("idGenerator"),
        "is_completed" => 0
      ]
    ]
  );

  // Ak hrac este nehral tuto variantu
  if (empty($playersGenerators)) {
    $db->insert_array([
      'table' => "players_generators",
      'table_data' => [
        "id_player" => $player["id"],
        "id_generator" => \Core\Controllers\WebController::getParam("idGenerator"),
        "structure" => $response['structure']
      ]
    ]);

    $playerCurrentQuests = $db->getLastItem("players_generators");
  } else {
    $playerCurrentQuests = reset($playersGenerators);
  }

  echo json_encode([
    "idPlayerGenerator" => $playerCurrentQuests["id"],
    "structure" => $playerCurrentQuests['structure']
  ]);