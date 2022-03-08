<?php

  global $db;

  $data = \Core\Controllers\WebController::getPostParams();

  $db->update(
    tableName: "players",
    rowId: 1,
    data: $data
  );

  echo 1;

?>