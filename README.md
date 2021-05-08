#Docker PHP-FPM + Nginx installation

This repository acts as a skeleton for setting up new applications using PHP-FPM and Nginx which are executed inside Docker.

## What is included
* PHP 7.4 setup (including Xdebug and correct permissions for write files for PHP process)
* Nginx setup, including redirecting every request to index.php (useful for PHP frameworks).
* Script for running the Composer.  
* MySQL container setup

## Usage

1. Download repository files (more preferable via Zip file, if you want to keep your our application under source control)
2. Go to repository folder
3. `sh composer.sh init` (if you want to use Composer).
4. Install your application inside `app` folder.
5. Run `docker-compose up`.
5. ...Congratulations! You can now access your application via http://localhost .
