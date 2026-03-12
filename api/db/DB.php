<?php

namespace Rafa\DailycodeApi\db;

use PDO;
use PDOException;
class DB
{
    private const HOST = '';
    private const DBNAME = '';
    private const USER = '';
    private const PASSWORD = '';
    public static function connection(
    ): PDO {
        try {
            $pdo = new PDO(
                "mysql:host=" . self::HOST . ";dbname=" . self::DBNAME . ";charset=utf8mb4",
                self::USER,
                self::PASSWORD
            );
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
        } catch (PDOException $e) {
            echo json_encode(['error' => $e->getMessage()]);
            die();
        }
    }
}