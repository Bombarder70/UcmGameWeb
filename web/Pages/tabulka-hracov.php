<?php

global $dia;

$idGenerator = \Core\Controllers\WebController::getParam("idGenerator");

$hraci = new \Component\TableLarge("players");
$hraci->conditions([
  "select SUM(players_generators.score) as score, players.nickname as nickname",
  "join" => [
    "players_generators" => [
      "id",
      "id_player"
    ]
  ],
  "where" => [
    "players_generators.id_generator" => $idGenerator 
  ],
  "group_by" => "players.nickname",
  "order_by" => "players_generators.score DESC",
]);
$hraci->showSaveButton(false);
$hraci->showDeleteButton(false);

$dia->template("
  <div class='container mt-3 statistky'>
    ".$dia->card($hraci->show())."
  </div>
")->render();