<?php

use Rafa\DailycodeApi\src\controllers\CodeController;

$router->add('GET', '/codes', [CodeController::class, "index"]);
$router->add('GET', '/codes/{id}', [CodeController::class, "show"]);
$router->add('GET', '/codes/{language}', [CodeController::class, "show"]);
$router->add('GET', '/codes/{date}', [CodeController::class, "show"]);