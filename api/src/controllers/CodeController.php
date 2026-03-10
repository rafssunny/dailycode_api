<?php

namespace Rafa\DailycodeApi\src\controllers;

use Rafa\DailycodeApi\src\models\Code;

class CodeController
{
    private Code $code;
    public function __construct()
    {
        $this->code = new Code();
    }
    public function index(): void
    {
        http_response_code(200);
        echo json_encode($this->code->getAll());
    }

    public function show($id)
    {
        //
    }
}