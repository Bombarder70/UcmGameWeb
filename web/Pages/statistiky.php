<?php

global $dia;

$hraci = new \Component\TableLarge("users");
$hraci->conditions([
  "order_by" => "score DESC"
]);

$dia->template("
  <div class='container mt-5'>
    ".$dia->card($hraci->show())."
  </div>
")->render();