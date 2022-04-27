<?php

  /**
   * Patrik Holeš
   * POST
   * @param int idPlayerGenerator
   * @param int spravnost
   * @return int is_completed 
   * curl -X POST -F idPlayerGenerator=8 -F spravnost=1 http://localhost/holes/pirate-game/web/index.php?action=update_score
  */

  global $db;

  $data = \Core\Controllers\WebController::getPostParams();

  // Vyber struktury
  $playersGenerators = $db->dbSelect(
    "players_generators",
    [
      "where" => [
        "id" => $data["idPlayerGenerator"]
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
    $data["idPlayerGenerator"],
    [
      "structure" => json_encode($otazky),
      "score" => $playersCurrentQuests["score"],
      "correct_answers" => $playersCurrentQuests["correct_answers"],
      "uncorrect_answers" => $playersCurrentQuests["uncorrect_answers"],
      "is_completed" => $isCompleted
    ]
  );
  
 
  // Update tabulku players
  $players = $db->dbSelect(
    "players",
    [
      "where" => [
        "id" => $playersCurrentQuests["id_player"]
      ]
    ]
  );

  $players = reset($players);

  $db->update(
    "players",
    $playersCurrentQuests["id_player"],
    [
      "score" => $players["score"] + $playersCurrentQuests["score"]
    ]
  );


  echo $isCompleted;

?>