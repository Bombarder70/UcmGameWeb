<?php

  /**
   * Patrik Holeš
   * POST
   * @param string playerNickname
   * @param string uid
   * @return Object
   * curl -X POST -F playerNickname=Pxx -F uid=xdadsadsa http://localhost/holes/pirate-game/web/index.php?action=set_nickname
  */

  global $db;

  $data = \Core\Controllers\WebController::getPostParams();

  // Vyber struktury
  $players = $db->dbSelect(
    "players",
    [
      "where" => [
        "nickname" => $data["playerNickname"]
      ]
    ]
  );

  if (empty($players)) {
    $db->insert_array([
      'table' => "players",
      'table_data' => [
        "nickname" => $data["playerNickname"],
        "uid" => $data["uid"] != "" ? $data["uid"] : "UNKNOWN"
      ]
    ]);

    echo json_encode([
      "status" => "success"
    ]);
  } else {
    echo json_encode([
      "status" => "fail",
      "message" => "This player name already exists"
    ]);
  }


?>