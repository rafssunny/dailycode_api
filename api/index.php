<?php

use Rafa\DailycodeApi\Router;
header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');
date_default_timezone_set('UTC');

include_once __DIR__ . '/../vendor/autoload.php';

$router = new Router();

require_once __DIR__ . '/routes.php';

$router->dispatch();