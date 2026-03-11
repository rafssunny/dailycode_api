<?php

namespace Rafa\DailycodeApi\src\middlewares;

use PDO;
use Rafa\DailycodeApi\db\DB;
class ApiKey
{
    private PDO $pdo;

    public function __construct()
    {
        $this->pdo = DB::connection();
    }
    public function handle()
    {
        $headers = getallheaders();
        $api_key = $headers['API-KEY'] ?? null;

        if (!$api_key) {
            http_response_code(401);
            echo json_encode(['error' => 'API key required']);
            exit;
        }

        $stmt = $this->pdo->prepare('SELECT * FROM api WHERE api_key = :api_key');
        $stmt->execute([':api_key' => $api_key]);
        
        if (!$stmt->fetchObject()->tokens) {
            http_response_code(403);
            echo json_encode(['error' => 'Invalid API key']);
            exit;
        }

        $stmt = $this->pdo->prepare('UPDATE api SET tokens = tokens-1 WHERE api_key = :api_key;');
        $stmt->execute([':api_key' => $api_key]);
    }
}