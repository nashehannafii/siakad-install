#INSTALL SIAKAD

#rename app
cd /var/www/html/
mv unida-simple sikap
mv siakadv2 siakad



#install composer app
cd /var/www/html/siakad/
composer install
npm install
mkdir assets

cd /var/www/html/central/
composer install
npm install
mkdir assets

cd /var/www/html/sikap/
composer install
npm install
mkdir assets

chmod 777 -R siakad
chmod 777 -R sikap
chmod 777 -R central

rm /var/www/html/siakad/_protected/config/db.php
rm /var/www/html/siakad/_protected/config/params-local.php
rm /var/www/html/central/_protected/config/db.php
rm /var/www/html/central/_protected/config/params-local.php
rm /var/www/html/sikap/_protected/config/db.php
rm /var/www/html/sikap/_protected/config/params-local.php


cd /var/www/html/siakad/_protected/config/

echo "<?php

return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql:host=localhost;dbname=siakadunida_simak',
    'username' => 'guide',
    'password' => 'bismillah',
    'charset' => 'utf8',

    // Schema cache options (for production environment)
    //'enableSchemaCache' => true,
    //'schemaCacheDuration' => 60,
    //'schemaCache' => 'cache',
];

">>db.php

echo "<?php

return [

    'api_baseurl' => 'http://api.unida.gontor.ac.id:1926',
    'feeder_baseurl' => 'http://feeder.unida.gontor.ac.id:8082/ws/live2.php',
    'sso_url' => 'http://local.sso.com:30101',
    'client_token' => 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IjE5MjYyMDE0IiwiY2xpZW50U2VjcmV0IjoiYmlzbWlsbGFoIiwiaWF0IjoxNTc5MTY2NDc3fQ.T5xuFl750KDGyblYBGDPpZ-fl4UDcOq4Rc6TWxux1VE',
    'sso_url' => 'http://local.sso.com:30101',
    'consumer_secret' => '',
    'consumer_id' => '',
    'crypt_algo' => '',
    'jwt_key' => 'Jrk6rEHUa7',

    'redirectUri' => 'http://local.admisi.com/site/test',
    'sso_login' => 'http://local.central.com/site/login?callback=http://local.simpeg.com',
    'sso_logout' => 'http://local.central.com/site/sess-logout',
    'invoke_token_uri' => 'http://local.central.com/site/invoke-token',
    'sister' => [
        'baseurl' => 'http://sister.unida.gontor.ac.id/ws.php/1.0',
        'id_pengguna' => '23ba3201-5817-404c-8c3e-0f3d30508670',
        'username' => 'iim741BPbuhcfPLJ0W3INlp7iri9TYNRyA92VAGW0mU=',
        'password' => '8T+TFRJBWli3dWtRsRsCfK9gyk0Jdx4ZnTqNTdCqnUA1Z4iQR9qLY9g/tuVtmv40',
        'lembaga_iptek' => '715253d2-bafa-429a-9ff7-a85b34ff955d',
    ],
    'feeder' => [
        'baseurl' => 'http://feeder.unida.gontor.ac.id:8082/ws/live2.php',
        'username' => '071085',
        'password' => 'un1d4f0rl4p15',
    ],
    's3' => [
        'version' => 'latest',
        'region'  => 'us-east-1',
        'endpoint' => 'http://s3.unida.gontor.ac.id:9000',
        'use_path_style_endpoint' => true,
        'credentials' => [
            'key'    => 'minio',
            'secret' => 'pptt11kk44',
        ],
    ],
    'classroom' => [
        'clientId' => '',
        'clientSecret' => '',
        'redirectUriJadwal' => 'https://local.sia.com/simak-jadwal/oauth2-callback',
        'redirectUri' => 'https://local.sia.com/simak-materi/oauth2-callback',
        'redirectUriTopik' => 'https://local.sia.com/simak-topik/oauth2-callback',
        'redirectUriTugas' => 'https://local.sia.com/simak-tugas/oauth2-callback',
        'redirectUriTugasMhs' => 'https://local.sia.com/simak-tugas-mahasiswa/oauth2-callback'
    ]

];
">>params-local.php


cd /var/www/html/central/_protected/config/
echo "<?php

return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql:host=localhost;dbname=unidagon_portal',
    'username' => 'guide',
    'password' => 'bismillah',
    'charset' => 'utf8',

    // Schema cache options (for production environment)
    //'enableSchemaCache' => true,
    //'schemaCacheDuration' => 60,
    //'schemaCache' => 'cache',
];

">>db.php

echo "<?php

return [

   'api_baseurl' => 'http://api.unida.gontor.ac.id:1926',
   'client_token' => 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IjE5MjYyMDE0IiwiY2xpZW50U2VjcmV0IjoiYmlzbWlsbGFoIiwiaWF0IjoxNTc5MTY2NDc3fQ.T5xuFl750KDGyblYBGDPpZ-fl4UDcOq4Rc6TWxux1VE',
   'jwt_key' => 'Jrk6rEHUa7',
   'sso_login' => '',
   'sso_logout' => '',
   'google' => [
   		'clientId' => '',
        'clientSecret' => '',
        'redirectUri' => 'http://local.e-rkat.com/site/oauth2-callback',
   ]
];
">>params-local.php


cd /var/www/html/sikap/_protected/config/
echo "<?php

return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql:host=localhost;dbname=siakadunida_simak',
    'username' => 'guide',
    'password' => 'bismillah',
    'charset' => 'utf8',

    // Schema cache options (for production environment)
    //'enableSchemaCache' => true,
    //'schemaCacheDuration' => 60,
    //'schemaCache' => 'cache',
];

">>db.php

echo "<?php

return [

    'api_baseurl' => 'http://api.unida.gontor.ac.id:1926',
    'client_token' => 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IjE5MjYyMDE0IiwiY2xpZW50U2VjcmV0IjoiYmlzbWlsbGFoIiwiaWF0IjoxNTc5MTY2NDc3fQ.T5xuFl750KDGyblYBGDPpZ-fl4UDcOq4Rc6TWxux1VE',
    'sso_login' => 'http://local.central.com/site/login',
    'sso_logout' => 'http://local.central.com/site/sess-logout',
    'jwt_key' => 'Jrk6rEHUa7',
    'consumer_id' => '',
    'consumer_secret' => '',
    'invoke_token_uri' => 'http://local.central.com/site/invoke-token',
    's3' => [
        'version' => 'latest',
        'region'  => 'us-east-1',
        'endpoint' => 'http://s3.unida.gontor.ac.id:9000',
        'use_path_style_endpoint' => true,
        'credentials' => [
            'key'    => 'minio',
            'secret' => 'pptt11kk44',
        ],
    ],
];
">>params-local.php


#Download database
cd $HOME
ssh-keygen
ssh-copy-id
ssh-copy-id pptik@172.20.20.25
sftp pptik@172.20.20.25

echo '
Kemudian setting untuk mengambil database:

cd backup/172.20.20.19/
lcd /home/user/ (tempat untuk menaruh download)
get siakadunida_simak.(tanggal backup).sql.gz

cd ../172.20.20.12/
get unidagon_portal.(tanggal backup).sql.gz

exit
';
