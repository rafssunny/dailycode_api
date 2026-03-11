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

    public function show($param): void
    {
        http_response_code(200);
        switch (true) {
            case $this->code->getById($param[0]):
                http_response_code(200);
                echo json_encode($this->code->getById($param[0]));
                break;
            case $this->code->getByLanguage($param[0]):
                http_response_code(200);
                echo json_encode($this->code->getByLanguage($param[0]));
                break;
            case $this->code->getByDate($param[0]):
                http_response_code(200);
                echo json_encode($this->code->getByDate($param[0]));
                break;
            default:
                http_response_code(404);
                echo json_encode(['error' => 'Not found.']);
                break;
        }
    }
}