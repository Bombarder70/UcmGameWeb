<?php

global $db;

$uid = \Core\Controllers\WebController::getParam("uid");
$status = "";
$generators = [];

$rooms = $db->dbSelect(
  "rooms",
  [
    "where" => [
      "uid" => $uid
    ]
  ]
);

if (!empty($rooms)) {
  $room = reset($rooms);

  $generators = $db->dbSelect(
    "generator",
    [
      "select" => "id, name",
      "where" => [
        "id_room" => $room["id"]
      ]
    ]
  );

  if (empty($generators)) $status = "empty";
  else $status = "success";
} else {
  $status = "error";
}

echo json_encode([
  "status" => $status,
  "data" => $generators
]);


