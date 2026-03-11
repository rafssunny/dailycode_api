<?php

use Rafa\DailycodeApi\Router;
use Rafa\DailycodeApi\src\middlewares\ApiKey;
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type, API-KEY");
header("Access-Control-Allow-Methods: GET, OPTIONS");
header('Content-type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

date_default_timezone_set('UTC');

include_once __DIR__ . '/../vendor/autoload.php';

$router = new Router();

$router->middleware(new ApiKey());

require_once __DIR__ . '/routes.php';

$router->dispatch();