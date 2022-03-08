<?php

$otazky = new \Component\TableLarge("generator");

$dia->template("
  <div class='container mt-5'>
    ".$dia->cardBook($otazky->show())."
  </div>
")->render();