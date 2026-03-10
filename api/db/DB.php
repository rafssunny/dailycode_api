<?php

namespace Rafa\DailycodeApi\db;

use PDO;
use PDOException;
class DB
{
    public static function connection(
    ): PDO {
        try {
            $pdo = new PDO(
                "mysql:host=127.0.0.1;dbname=dailycode",
                'root',
                ''
            );
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
        } catch (PDOException $e) {
            echo json_encode(['error' => $e->getMessage()]);
            die();
        }
    }
}