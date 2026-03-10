<?php

namespace Rafa\DailycodeApi\src\controllers;

class CodeController{
    public function index() {
        echo json_encode('index');
    }

    public function show($id) {
        echo json_encode($id);
    }
}