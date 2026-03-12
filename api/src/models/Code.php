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

    public function getById(mixed $id): mixed
    {
        $stmt = $this->pdo->prepare('SELECT * FROM codes WHERE id = :id');
        $stmt->execute([':id' => $id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function getByLanguage(mixed $language): mixed
    {
        $stmt = $this->pdo->prepare('SELECT * FROM codes WHERE slug = :language');
        $stmt->execute([':language' => $language]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getByDate(mixed $date): mixed
    {
        if ($date == 'today') {
            $date = date('Y-m-d');
        }
        $stmt = $this->pdo->prepare('SELECT * FROM codes WHERE date = :date');
        $stmt->execute([':date' => $date]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}