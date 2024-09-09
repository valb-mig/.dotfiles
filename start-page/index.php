<?php
    /* Settings */

    $sectionLinks = [
        [
            [
                'title' => 'GitHub',
                'icon'  => 'fa-brands fa-github',
                'href'  => 'https://www.github.com'
            ],
            [
                'title' => 'Linkedin',
                'icon'  => 'fa-brands fa-linkedin',
                'href'  => 'https://www.linkedin.com'
            ],
            [
                'title' => 'Gmail',
                'icon'  => 'fa-solid fa-at',
                'href'  => 'https://www.gmail.com'
            ],
            [
                'title' => 'Docs',
                'icon'  => 'fa-solid fa-quote-right',
                'href'  => 'https://docs.google.com/document'
            ],
            [
                'title' => 'Chat GPT',
                'icon'  => 'fa-solid fa-robot',
                'href'  => 'https://chat.openai.com/'
            ]
        ],
        [
            [
                'title' => 'Youtube',
                'icon'  => 'fa-brands fa-youtube',
                'href'  => 'https://www.youtube.com'
            ],
            [
                'title' => 'Twitch',
                'icon'  => 'fa-brands fa-twitch',
                'href'  => 'https://twitch.tv/'
            ],
            [
                'title' => 'Fontawesome',
                'icon'  => 'fa-solid fa-font',
                'href'  => 'https://fontawesome.com/'
            ],
            [
                'title' => 'Coolors',
                'icon'  => 'fa-solid fa-palette',
                'href'  => 'https://coolors.co'
            ],
            [
                'title' => 'University',
                'icon'  => 'fa-solid fa-building-columns',
                'href'  => 'https://univirtus.uninter.com/ava/web/'
            ]
        ]
      
    ];

    $sidebarLinks = [
        [
            'name' => 'port:3000',
            'icon' => 'fa fa-house',
            'href' => 'https://localhost:3000'
        ],
        [
            'name' => 'Cryptii',
            'icon' => 'fa-solid fa-bug',
            'href' => 'https://cryptii.com'
        ],
        [
            'name' => 'Textkool',
            'icon' => 'fa-solid fa-heading',
            'href' => 'https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=Red%20Phoenix&text=Your%20text%20here%20'
        ],
        [
            'name' => 'Nerd Fonts',
            'icon' => 'fa-solid fa-glasses',
            'href' => 'https://www.nerdfonts.com/'
        ],
        [
            'name' => 'Get Emoji',
            'icon' => 'fa-solid fa-face-smile',
            'href' => 'https://getemoji.com/'
        ],
        [
            'name' => 'Ummy',
            'icon' => 'fa-solid fa-video',
            'href' => 'https://ummy.net/pt33ZN/'
        ],
    ];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="/public/styles.css?<?= time() ?>">
    <title></></title>
</head>
    <body>
        <main>
            <div class="content">
                <div class="principal">

                    <?php
                        foreach($sectionLinks as $links)
                        {
                            ?>
                            <container class="centered-box">
                                <div class="button-group">

                                <?php
                                foreach($links as $link)
                                {
                                    ?>
                                        <a class="tooltip" href="<?= $link['href'] ?>" target="_blank">
                                            <div class="slide">
                                                <i class="<?= $link['icon'] ?>"></i>
                                            </div>
                                            <span class="tooltiptext"><?= $link['title'] ?></span>
                                        </a> 
                                    <?php  
                                }
                                ?>

                                </div>
                            </container>
                            <?php
                        }
                    ?>

                </div>
                <div class="side-tools">

                    <?php
                        $arrColors = [
                            'btn-p',
                            'btn-o',
                            'btn-g',
                            'btn-r',
                            'btn-y',
                            'btn-b'
                        ];

                        $count = 0;

                        foreach($sidebarLinks as $link)
                        {
                            ?>
                                <div class="tooltip">
                                    <a class="btn <?= $arrColors[$count] ?>" href="<?= $link['href'] ?>" target="_blank">
                                        <i class="<?= $link['icon'] ?>"></i>
                                        <span></span>
                                    </a>
                                    <span class="tooltiptext"><?= $link['name'] ?></span>
                                </div>
                            <?php

                            $count++;
                        }
                    ?>

                </div>
            </div>
        </main>    
    </body>
</html>
