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

  $otazky = (array)json_decode($playersCurrentQuests['structure']);

  $isCompleted = 0;

  foreach ($otazky["quests"] as $key => $otazka) {
    if ($otazka->zobrazena == false) {
      $otazky["quests"][$key]->zobrazena = true;
      $otazky["quests"][$key]->odpoved = (bool)$data["spravnost"];

      $isCompleted = 0;
      break;
    } else {
      $isCompleted = 1;
    }
  }

  if ($data["spravnost"] == 1) {
    $playersCurrentQuests["score"] += 100;
    $playersCurrentQuests["correct_answers"] += 1;
  } else {
    $playersCurrentQuests["uncorrect_answers"] += 1;
  }

  $db->update(
    "players_generators",
    $playersCurrentQuests["id"],
    [
      "structure" => json_encode($otazky),
      "score" => $playersCurrentQuests["score"],
      "correct_answers" => $playersCurrentQuests["correct_answers"],
      "uncorrect_answers" => $playersCurrentQuests["uncorrect_answers"],
      "is_completed" => $isCompleted
    ]
  );

  echo $isCompleted;

?>