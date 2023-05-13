<?php

declare(strict_types=1);

$preloadFilePath = dirname(__DIR__) . '/var/cache/prod/App_KernelProdContainer.preload.php';
if (file_exists($preloadFilePath)) {
    require $preloadFilePath;
}
