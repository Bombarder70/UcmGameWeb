<?php

$idRoom = \Core\Controllers\WebController::getParam("previous_page_id_form");

$v = $dia->vue("Generator");

$otazky = new \Component\TableLarge("generator");
$otazky->conditions([
  "where" => [
    "id_room" => $idRoom
  ]
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