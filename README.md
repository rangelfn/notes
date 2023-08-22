# THECNICAL NOTES

How to install composer in Mac OS
To quickly install Composer in the current directory, run the following script in your terminal.

- php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
- php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02 ') { echo 'Instalador verificado'; } else { echo 'Instalador corrompido'; unlink('composer-setup. php'); } echo PHP_EOL;"
- php composer-setup.php
- php -r "unlink('composer-setup.php');"

Most likely, you want to put the composer.phar into a directory on your PATH, so you can simply call composer from any directory (Global install), using for example:

- sudo mv composer.phar /usr/local/bin/composer
