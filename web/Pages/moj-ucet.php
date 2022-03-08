<?php

$profileView = new Component\ProfileView("users");
$rooms = new \Component\TableLarge("rooms");
$rooms->buttons([
  ["name" => "Generátor otázok", "link" => "otazky", "class" => "btn btn-primary"],
]);

$pridat = new \Component\Row("rooms");

$dia->template("
  <div class='mt-5'>
    {$profileView->show()}
  </div>
  <div class='container'>
    {$pridat->show()}
    ".$dia->card($rooms->show())."
  </div>
")->render();