<?php

namespace Rafa\DailycodeApi\src\models;

use Rafa\DailycodeApi\db\DB;
use PDO;
class Code
{
    private PDO $pdo;

    public function __construct()
    {
        $this->pdo = DB::connection();
    }

    public function getAll(): array
    {
        $data = $this->pdo->query('SELECT * FROM codes;');
        return $data->fetchAll(PDO::FETCH_ASSOC);
    }
}