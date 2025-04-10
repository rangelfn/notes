###**MY SETTINGS MY ZSHRC LINE FOR APACHE**
Here are the environment variable settings that I had to make in my patch to respond to all commands correctly.

````
- sudo nano ~/.zshrc             
```
# Adicionando diretórios ao PATH
export PATH="/usr/local/openssl/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/cmake-3.29.3/bin:$PATH"

# Definição de diretórios importantes
export FLUTTER_HOME=/usr/local/flutter
export PATH="$FLUTTER_HOME/bin:$PATH"

# Definição de flags para compilação
export LDFLAGS="-L/usr/local/openssl/lib -L/usr/local/zlib/lib"
export CPPFLAGS="-I/usr/local/openssl/include -I/usr/local/zlib/include"

# Adicionando diretório pkgconfig ao PKG_CONFIG_PATH
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/local/openssl/lib/pkgconfig:/usr/local/zlib/lib/pkgconfig:/usr/local/libpng/lib/pkgconfig:/usr/local/freetype/lib/pkgconfig:/usr/local/libzip/lib/pkgconfig:/usr/local/bzip2/lib/pkgconfig:/usr/local/oniguruma/lib/pkgconfig:$PKG_CONFIG_PATH"

# Adicionando diretório lib ao LD_LIBRARY_PATH
export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"

# Definindo a localização do php.ini
export PHPRC=/usr/local/php/lib

# Adicionando diretório Python ao PATH
export PYTHON_CFLAGS="-I/usr/include/python3.12"

# Adicionando diretório de binários do PHP ao PATH
export PATH="/usr/local/php/bin:$PATH"






