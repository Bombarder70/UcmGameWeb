<?php

global $dia;

$hraci = new \Component\TableLarge("players");
$hraci->conditions([
  "order_by" => "score DESC"
]);
$hraci->showSaveButton(false);
$hraci->showDeleteButton(false);

$dia->template("
  <div class='container mt-3 statistky'>
    ".$dia->card($hraci->show())."
  </div>
")->render();