<?php

global $dia;

$v = $dia->vue("Generator");

$dia->template("
  <div class='container'>
    <div class='card'>
      <div class='card-body'>
        <Generator></Generator>
      </div>
    </div>
  </div>
")->render();