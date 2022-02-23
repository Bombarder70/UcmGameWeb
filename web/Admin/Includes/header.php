<?php

global $dia;

$dia->template("
  <div class='card text-center'>
    <div class='card-body'>
      <a href='statistiky' class='btn btn-primary'>Štatistiky hráčov</a>
      <a href='generator' class='btn btn-secondary ml-5'>Generátor úloh</a>
    </div>
  </div>
")->render();