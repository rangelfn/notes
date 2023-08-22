# THECNICAL NOTES
- Hello, welcome to my notebook of how to install things, I often get lost between Windows, MacOS and Linux operating systems, so to write down is to remember. Thanks.

### **How to install composer in Mac OS**
To quickly install Composer in the current directory, run the following script in your terminal.

- php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
- php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02 ') { echo 'Instalador verificado'; } else { echo 'Instalador corrompido'; unlink('composer-setup. php'); } echo PHP_EOL;"
- php composer-setup.php
- php -r "unlink('composer-setup.php');"

Most likely, you want to put the composer.phar into a directory on your PATH, so you can simply call composer from any directory (Global install), using for example:

- sudo mv composer.phar /usr/local/bin/composer

### **Setting up a local web server on macOS 10.15 Catalina**
This User Tip only contains instructions for configuring the Apache server, PHP module, and Perl module.

- sudo nano /etc/apache2/httpd.conf

  Enable PHP by uncommenting lines 183, 186, 187 and 520 (remove #) 
- #LoadModule userdir_module libexec/apache2/mod_userdir.so
- #LoadModule php7_module libexec/apache2/libphp7.so
- #LoadModule perl_module libexec/apache2/mod_perl.so
- #Include /private/etc/apache2/extra/httpd-userdir.conf

you will need to create it with:
- sudo vi /etc/apache2/users/<your short-user-name>.conf
you will need to create it with:

Use the following as the content:
  <Directory "/Users/<your short-user-name>/Sites/">
    AddLanguage en .en 
      AddHandler perl-script .pl 
      PerlHandler ModPerl::Registry
      Options Indexes MultiViews FollowSymLinks ExecCGI 
      AllowOverride None 
    Require host localhost
  </Directory>

Check your configuration by running the following command in the Terminal:
- apachectl configtest

Turn on the Apache httpd service by running the following command in the Terminal:
- sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist

In your browse, navigate to your web site with the following address:
- http://localhost/
