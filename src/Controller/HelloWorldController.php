<?php

declare(strict_types=1);

namespace MusicshelfApi\Controller;

use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;

final class HelloWorldController
{
    public function __invoke(): Response
    {
        return new JsonResponse(['message' => 'Hello World!']);
    }
}
