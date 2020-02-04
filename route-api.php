<?php
require_once "Router.php";
require_once "./api/arboles.api.controller.php";

define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');

$r = new Router();

$r->addRoute("arboles", "GET", "ApiController", "obtenerArboles");
$r->addRoute("agregararboles", "POST", "ApiController", "agregarArbol");

$r->setDefaultRoute("ApiController", "obtenerArboles");

$r->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);