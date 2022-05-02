<?php

$idRoom = \Core\Controllers\WebController::getParam("idRoom");

$v = $dia->vue("Generator");

$otazky = new \Component\TableLarge("generator");
$otazky->conditions([
  "where" => [
    "id_room" => $idRoom
  ]
]);
$otazky->buttons([
  ["name" => "Zobraziť hráčov", "customLink" => "hraci", "class" => "btn btn-primary"],
]);

$dia->template("
  <div class='container'>
    <div class='card'  style='background-color: transparent !important;'>
      <div class='card-body'>
        <Generator></Generator>
      </div>
    </div>
  </div>
  <div class='container mt-5'>
    ".$dia->cardBook($otazky->show())."
  </div>
")->render();