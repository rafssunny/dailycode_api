<?php

namespace Rafa\DailycodeApi;

class Router
{
    private array $routes = [];

    public function add($method, $path, $handler): void
    {
        $this->routes[] =
            [
                'method' => $method,
                'path' => $path,
                'handler' => $handler
            ];
    }

    public function dispatch(): void
    {
        $request_method = $_SERVER['REQUEST_METHOD'];
        $request_uri = $_SERVER['REQUEST_URI'];

        foreach ($this->routes as $route) {
            // that part is for the {id}, {language}, {date}. after that, the values ​​within the {} become identifiable.
            $pattern = preg_replace('/\{[a-zA-Z]+\}/', '([a-zA-Z0-9_-]+)', $route['path']);
            $pattern = "#^$pattern$#";

            // the preg_match check if the URI matches the pattern
            if ($route['method'] === $request_method && preg_match($pattern, $request_uri, $matches)) {
                array_shift($matches);

                $handler = $route['handler'];
            } else {
                http_response_code(404);
                echo json_encode(['error' => 'Route not found']);
            }
        }
    }
}