<?php

  // DATABAZOVE NASTAVENIA
  $config['db']['host']         = "localhost";
  $config['db']['db']           = "ucm_game";
  $config['db']['user']         = "root";
  $config['db']['password']     = "";

  $config['dia_tables']         = "dia_tables";

  // SUBOROVE NASTAVENIA
  $config['dir']['root']        = dirname(__FILE__);
  $config['dir']['web']         = dirname(__FILE__) . "/web/";

  $config['hostweb']            = "web";
  $config['host']               = $_SERVER['HTTP_HOST'] . "/holes/UcmGameWeb";

  // NASTAVENIA DIE
  $config['web']['includes']    = "Includes";
  $config['web']['pages']       = "Pages";
  $config['web']['actions']     = "Actions";
  $config['web']['home']        = "domov";
  $config['web']['files']       = "files";
  $config['web']['notfound']    = "404";
  $config['web']['bootstrap']   = TRUE;
  $config['web']['vue']         = TRUE;
  $config['web']['vega']        = TRUE;
  $config['web']['dropzone']    = TRUE;
  $config['web']['vue_components'] = "Components";
  $config['web']['elasticsearch'] = TRUE;
  $config['web']['admin'] = "Admin";

  // NASTAVENA HLAVICKY
  $config['head']['lang']       = "sk";
  $config['head']['charset']    = "utf-8";
  $config['head']['css']        = ['style4.css'];
  $config['head']['script']     = ['main.js'];

  $config['dir']['admin'] = "{$config['dir']['root']}/web/{$config['web']['admin']}";

  $config['urls'] = [
    "rooms" => "moj-ucet"
  ];

?>