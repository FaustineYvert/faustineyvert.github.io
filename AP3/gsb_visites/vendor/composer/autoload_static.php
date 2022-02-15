<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit47563c35ef693b5ffd2af7102ce29c28
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit47563c35ef693b5ffd2af7102ce29c28::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit47563c35ef693b5ffd2af7102ce29c28::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit47563c35ef693b5ffd2af7102ce29c28::$classMap;

        }, null, ClassLoader::class);
    }
}
