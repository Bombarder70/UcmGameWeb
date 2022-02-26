<?php

  global $db;

  $response = $db->dbSelect(
    "users",
    [
      "where" => [
        "id" => 1 // Nas pirat2
      ]
    ]
  );

  $response = reset($response);

  echo $response['score'];