<?php

declare(strict_types=1);

namespace MusicshelfApi\Tests\Unit;

use PHPUnit\Framework\TestCase;

final class HelloWorldTest extends TestCase
{
    public function testHelloWorld(): void
    {
        self::assertSame('Hello World', 'Hello World');
    }
}
