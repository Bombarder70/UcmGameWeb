<?php

global $db;

$playerNickname = \Core\Controllers\WebController::getParam("playerNickname");

$player = $db->dbSelect(
  "players",
  [
    "select" => "players.id as id, SUM(players_generators.score) as score, SUM(players_generators.deaths) as deaths, SUM(players_generators.correct_answers) as correct_answers,SUM(players_generators.uncorrect_answers) as uncorrect_answers",
    "join" => [
      "players_generators" => [
        "id",
        "id_player"
      ]
    ],
    "where" => [
      "nickname" => $playerNickname
    ],
    "group_by" => "players.id",
    "order_by" => "players.id"
  ]
);

$player = reset($player);

echo json_encode($player);