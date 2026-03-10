<?php

namespace Rafa\DailycodeApi;

class Router
{
    private array $routes = [];

    public function add($method, $path, $handler)
    {
        $this->routes[] =
            [
                'method' => $method,
                'path' => $path,
                'handler' => $handler
            ];
    }

    public function dispatch()
    {
        $request_method = $_SERVER['REQUEST_METHOD'];
        $request_uri = $_SERVER['REQUEST_URI'];

        foreach ($this->routes as $route) {
            if ($route['method'] === $request_method && $route['path'] === $request_uri) {
                //
            } else {
                http_response_code(404);
                echo json_encode(['error' => 'Route not found']);
            }
        }
    }
}