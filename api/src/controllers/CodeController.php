<?php

namespace Rafa\DailycodeApi\src\controllers;

use PDO;
use Rafa\DailycodeApi\db\DB;

class CodeController{
    private PDO $pdo = DB::connection();
    public function index() {
        //
    }

    public function show($id) {
       //
    }
}