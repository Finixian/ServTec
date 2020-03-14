<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit95ab788e48b0197b84c9bb9d19d3d06f
{
    public static $files = array (
        '320cde22f66dd4f5d3fd621d3e88b98f' => __DIR__ . '/..' . '/symfony/polyfill-ctype/bootstrap.php',
    );

    public static $prefixLengthsPsr4 = array (
        'V' => 
        array (
            'View\\' => 5,
        ),
        'S' => 
        array (
            'Symfony\\Polyfill\\Ctype\\' => 23,
        ),
        'M' => 
        array (
            'Model\\' => 6,
        ),
        'D' => 
        array (
            'Dotenv\\' => 7,
        ),
        'C' => 
        array (
            'Controller\\' => 11,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'View\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Views/logicavista',
        ),
        'Symfony\\Polyfill\\Ctype\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/polyfill-ctype',
        ),
        'Model\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Models',
        ),
        'Dotenv\\' => 
        array (
            0 => __DIR__ . '/..' . '/vlucas/phpdotenv/src',
        ),
        'Controller\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Controllers',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit95ab788e48b0197b84c9bb9d19d3d06f::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit95ab788e48b0197b84c9bb9d19d3d06f::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}