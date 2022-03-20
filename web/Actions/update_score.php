<?php

  global $db;

  $data = \Core\Controllers\WebController::getPostParams();

  $db->update(
    tableName: "players",
    rowId: 1,
    data: [
      "score" => $data["score"]
    ]
  );

  $response = $db->dbSelect(
    "generator",
    [
      "where" => [
        "id" => 1 // testovacie
      ]
    ]
  );

  $response = reset($response);

  $otazky = (array)json_decode($response['structure']);

  foreach ($otazky["quests"] as $key => $otazka) {
    if ($otazka->zobrazena == false) {
      $otazky["quests"][$key]->zobrazena = true;
      $otazky["quests"][$key]->odpoved = (bool)$data["spravnost"];
      break;
    }
  }

  $db->update(
    tableName: "generator",
    rowId: 1,
    data: [
      "structure" => json_encode($otazky),
    ]
  );

  echo 1;

?>