<?php

  global $db;

  $data = \Core\Controllers\WebController::getPostParams();

  $idGenerator = 1;

  // Vyber konkrtneho hraca
  $players = $db->dbSelect(
    "players",
    [
      "where" => [
        "nickname" => $data["playerNickname"]
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

  $playersCurrentQuests = reset($playersGenerators);

  $db->update(
    "players",
    $player["id"],
    [
      "score" => $data["score"]
    ]
  );

  $otazky = (array)json_decode($playersCurrentQuests['structure']);

  foreach ($otazky["quests"] as $key => $otazka) {
    if ($otazka->zobrazena == false) {
      $otazky["quests"][$key]->zobrazena = true;
      $otazky["quests"][$key]->odpoved = (bool)$data["spravnost"];
      break;
    }
  }

  $db->update(
    "players_generators",
    $playersCurrentQuests["id"],
    [
      "structure" => json_encode($otazky),
    ]
  );

  echo 1;

?>