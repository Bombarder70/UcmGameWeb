<?php

$profileView = new Component\ProfileView("users");
$rooms = new \Component\TableLarge("rooms");
$rooms->buttons([
  ["name" => "Generátor otázok", "link" => "otazky&idRoom=1", "class" => "btn btn-primary"],
]);

$pridat = new \Component\Row("rooms");
$pridat->defaultValues([
  'id_user' => \Core\Controllers\UserController::getLogged()['id']
]);

$dia->template("
  <div class='mt-5'>
    {$profileView->show()}
  </div>
  <div class='container'>
    {$pridat->show()}
    ".$dia->card($rooms->show())."
  </div>
")->render();