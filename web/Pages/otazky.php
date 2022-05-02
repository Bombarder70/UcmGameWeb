<?php

$idGenerator = \Core\Controllers\WebController::getParam("previous_page_id_form");

$v = $dia->vue("Generator");

$otazky = new \Component\TableLarge("generator");
$otazky->conditions([
  "where" => [
    "id_room" => $idGenerator
  ]
]);
$otazky->buttons([
  ["name" => "Tabuľka hráčov", "link" => "index.php?webPage=tabulka-hracov&idGenerator={$idGenerator}", "class" => "btn btn-primary"],
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