<?php

global $dia;

$dia->template("
  <div class='card text-center'>
    <div class='card-body'>
      <a href='statistiky' class='gold-a'><i class='fas fa-trophy'></i> Tabuľka hráčov</a>
      <!--<a href='generator' class='btn btn-secondary ml-5'>Generátor úloh</a>-->
      <a href='login' class='red-a ml-5'><i class='fas fa-gamepad'></i> Herný účet</a>
    </div>
  </div>
")->render();