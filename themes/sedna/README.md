#Sedna

##How to use
- Download WebEd: [https://github.com/sgsoft-studio/webed](https://github.com/sgsoft-studio/webed)
- Download plugin custom fields: [https://github.com/webed-plugins/custom-fields](https://github.com/webed-plugins/custom-fields)
- Download and place this theme at **/themes**
- Replace WebEd composer.json with the composer.json file at **/sample-data/composer.json**
- Import the database in **/sample-data/db.sql**
- Run **composer dump-autoload**
- Run **php artisan vendor:publish --tag=webed-public-assets**
- Login to dashboard by navigate to **/admincp** with user **admin/123456**