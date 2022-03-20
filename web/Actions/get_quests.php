<?php

  global $db;

  $response = $db->dbSelect(
    "generator",
    [
      "where" => [
        "id" => 1 // testovacie
      ]
    ]
  );

  $response = reset($response);

  echo $response['structure'];