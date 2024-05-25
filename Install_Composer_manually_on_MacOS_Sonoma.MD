### **How to install composer in Mac OS**
To quickly install Composer in the current directory, run the following script in your terminal.
```
- php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
- php composer-setup.php
- php -r "unlink('composer-setup.php');"
```
### **Move Composer to a globally accessible directory, using for example:**
```
- sudo mv composer.phar /usr/local/bin/composer
```
### **Check installation:**
Make sure the ~/.composer/vendor/bin directory (or ~/.config/composer/vendor/bin depending on your Composer version) is in your PATH. Add the following line to your shell configuration file (~/.zshrc or ~/.bash_profile):
```
- export PATH="$PATH:$HOME/.composer/vendor/bin"
- source ~/.zshrc # OR
- source ~/.bash_profile
- composer -v
```
  
