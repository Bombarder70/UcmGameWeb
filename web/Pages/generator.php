<?php

global $dia;

$v = $dia->vue("CustomForm");

$dia->template("
  <div class='container'>
    <div class='card' style='background-color:yellow;'>
      <div class='card-body'>
        <customForm></customForm>
      </div>
    </div>
  </div>
")->render();