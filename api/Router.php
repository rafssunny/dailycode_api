<?php

namespace Rafa\DailycodeApi;

class Router
{
    private array $routes = [];
    private array $middlewares = [];

    public function add($method, $path, $handler): void
    {
        $this->routes[] =
            [
                'method' => $method,
                'path' => $path,
                'handler' => $handler
            ];
    }

    public function middleware($middleware): void
    {
        $this->middlewares[] = $middleware;
    }

    public function dispatch(): void
    {
        $request_method = $_SERVER['REQUEST_METHOD'];
        $request_uri = '/' . ($_GET['path'] ?? '');

        foreach ($this->middlewares as $middleware) {
            $middleware->handle();
        }

        foreach ($this->routes as $route) {
            // that part is for the {id}, {language}, {date}. after that, the values ​​within the {} become identifiable.
            $pattern = preg_replace('/\{[a-zA-Z]+\}/', '([a-zA-Z0-9_-]+)', $route['path']);
            $pattern = "#^$pattern$#";

            // the preg_match check if the URI matches the pattern
            if ($route['method'] === $request_method && preg_match($pattern, $request_uri, $matches)) {
                array_shift($matches);

                $handler = $route['handler'];

                $controller = new $handler[0];
                $method = $handler[1];
                call_user_func([$controller, $method], $matches);
                return;
            }
        }
        http_response_code(404);
        echo json_encode(['error' => 'Route not found']);
    }
}