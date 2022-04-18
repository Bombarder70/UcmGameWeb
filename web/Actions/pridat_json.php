<?php

  global $db;

  $data = json_decode(json_encode($db->request_data()), true);

  echo $db->insert_array([
    'table' => $data["params"]["tableName"],
    'table_data' => [
      "name" => $data["params"]["name"],
      "id_room" => $data["params"]["idRoom"],
      "structure" => json_encode($data["params"]["data"])
    ]
  ]);

?>