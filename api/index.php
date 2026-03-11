<?php

use Rafa\DailycodeApi\Router;
use Rafa\DailycodeApi\src\middlewares\ApiKey;
header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');
date_default_timezone_set('UTC');

include_once __DIR__ . '/../vendor/autoload.php';

$router = new Router();

$router->middleware(new ApiKey());

require_once __DIR__ . '/routes.php';

$router->dispatch();