<?php

require_once "controllers/visitor.controller.php"; // visitante
require_once "controllers/user.controller.php"; // administradores del sitio
require_once "Router.php";

define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
define("LOGIN", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/login');

if (!isset($_GET['action'])){
    $_GET['action'] = '';
}


$r= new Router();

$r->addRoute("home","GET","VisitorController", "showTrees");
// TREES
$r->addRoute("arboles","GET","VisitorController","showTrees");
$r->addRoute("arboles/:ID","GET","VisitorController","showTree");
$r->addRoute("nuevoarbol","POST","UserController","addTree");
$r->addRoute("borrararbol/:ID","GET","UserController","deleteTree");
$r->addRoute("editordearbol/:ID","GET","UserController","treeEditor");
$r->addRoute("editararbol/:ID","POST","UserController","editTree");
//SPECIES
$r->addRoute("especies","GET","UserController","showSpecies");
// DEFAULT
$r->setDefaultRoute("VisitorController", "showTrees");

$r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 