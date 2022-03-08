<?php

$profileView = new Component\ProfileView("users");
$rooms = new \Component\TableLarge("rooms");

$dia->template("
  <div class='mt-5'>
    {$profileView->show()}
  </div>
  <div class='container'>
    ".$dia->card($rooms->show())."
  </div>
")->render();