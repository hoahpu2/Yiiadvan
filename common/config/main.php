<?php
return [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        // 'urlManager' => [
        //     'class' => 'yii\web\UrlManager',
        //     'enablePrettyUrl' => true,
        //     'showScriptName' => false,
        //     'suffix' => '.html',
        //     'rules' => [
        //         ['pattern' => '<controller:\w+>/<id:\d+>', 'route' => '<controller>/view', 'suffix' => '.html'],
        //         ['pattern' => '<controller:\w+>/<action:\w+>/<id:\d+>', 'route' => '<controller>/<action>', 'suffix' => '.html'],
        //         ['pattern' => '<controller:\w+>/<action:\w+>', 'route' => '<controller>/<action>', 'suffix' => '.html'],
        //     ]
        // ],
    ],
];
