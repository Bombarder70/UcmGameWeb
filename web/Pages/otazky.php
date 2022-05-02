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
<<<<<<< HEAD
  ["name" => "Zobraziť hráčov", "customLink" => "hraci", "class" => "btn btn-primary"],
=======
  ["name" => "Tabuľka hráčov", "link" => "index.php?webPage=tabulka-hracov&idGenerator={$idGenerator}", "class" => "btn btn-primary"],
>>>>>>> cf13fe6f64276eb0242d394376a301cec181016f
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