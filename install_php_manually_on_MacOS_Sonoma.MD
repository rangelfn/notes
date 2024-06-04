###**How to manually build and install PHP in Mac OS Sonoma**
I recommend that you use the releases that specify here, why there are conflicts
between release versions, this left me sleepless for days. Follow the order below
as there are dependencies.

###**REQUIREMENTS LINKS AND RELESES**

**Basic Dependencies**
- AUTOMAKE (automake-1.16.5): https://ftp.gnu.org/gnu/automake/automake-1.16.5.tar.xz
- LIBTOOL (libtool-2.4.7): https://ftp.gnu.org/gnu/libtool/libtool-2.4.7.tar.xz
- AUTOCONF (autoconf-2.72): https://ftp.gnu.org/gnu/autoconf/autoconf-2.72.tar.xz
- M4 (m4-1.4.19): https://ftp.gnu.org/gnu/m4/m4-1.4.19.tar.xz
- PKG-CONFIG (pkg-config-0.29.2): https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.2.tar.gz

**Text and Internationalization Libraries**
- GETTEXT (gettext-0.22.5): https://ftp.gnu.org/gnu/gettext/gettext-0.22.5.tar.gz
- LIBICONV (libiconv-1.17): https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.17.tar.gz

**Other Libraries**
- LIBATOMIC_OPS (libatomic_ops-7.8.2): https://github.com/ivmai/libatomic_ops/releases/download/v7.8.2/libatomic_ops-7.8.2.tar.gz
- LIBXML2 (libxml2-2.9.14): https://github.com/GNOME/libxml2/archive/refs/tags/v2.9.14.tar.gz
- SQLITE_AUTOCONF (sqlite-autoconf-3410000): https://www.sqlite.org/2023/sqlite-autoconf-3410000.tar.gz

**Compression and Encoding Libraries**
- BZIP2 (bzip2-1.0.8): https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz
- ZLIB (zlib-1.3.1): https://www.zlib.net/zlib-1.3.1.tar.gz
- LIBZIP (libzip-1.7.3): https://libzip.org/download/libzip-1.7.3.tar.gz

**Networking and Security Libraries**
- CURL (curl-7.65.1): https://curl.se/download/curl-7.65.1.tar.gz
- OPENSSL (openssl-3.3.0): https://www.openssl.org/source/openssl-3.3.0.tar.gz

**Graphic Libraries**
- LIBPNG (libpng-1.6.43): https://download.sourceforge.net/libpng/libpng-1.6.43.tar.xz
- FREETYPE (freetype-2.10.0): https://download.savannah.gnu.org/releases/freetype/freetype-2.10.0.tar.gz

**Languages and Compilers**
- BISON (bison-3.8): https://ftp.gnu.org/gnu/bison/bison-3.8.tar.gz
- CMAKE (cmake-3.29.3): https://cmake.org/files/v3.29/cmake-3.29.3.tar.gz
- RE2C (re2c-3.1): https://github.com/skvadrik/re2c/archive/refs/tags/3.1.zip

**Other Libraries**
- GLIB (glib-2.70.2): https://download.gnome.org/sources/glib/2.70/glib-2.70.2.tar.xz
- ONIGURUMA (onig-6.9.9): https://github.com/kkos/oniguruma/releases/download/v6.9.9/onig-6.9.9.tar.gz
- JPEGTRAN (jpeg-9d): http://www.ijg.org/files/jpegsrc.v9d.tar.gz

**PHP**
PHP (php-8.3.7): https://www.php.net/distributions/php-8.3.7.tar.gz


###**Install Basic Dependencies**

# Install m4
```
tar -xvf m4-1.4.19.tar.xz
cd m4-1.4.19
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install autoconf
```
tar -xvf autoconf-2.72.tar.xz
cd autoconf-2.72
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install automake
```
tar -xvf automake-1.16.5.tar.xz
cd automake-1.16.5
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install libtool
```
tar -xvf libtool-2.4.7.tar.xz
cd libtool-2.4.7
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install pkg-config
```
tar -xvf pkg-config-0.29.2.tar.gz
cd pkg-config-0.29.2
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

###**Install Languages and Compilers**

# Install bison
```
tar -xvf bison-3.8.tar.gz
cd bison-3.8
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install cmake
```
tar -xvf cmake-3.29.3.tar.gz
cd cmake-3.29.3
./bootstrap --prefix=/usr/local
make
sudo make install
cd ..
```

# Install re2c
```
tar -xvf re2c-3.1.tar.gz
cd re2c-3.1
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

###**Install Compression and Encoding Libraries**

# Install bzip2
```
tar -xvf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8
make
sudo make install
cd ..
```

# Install zlib
```
tar -xvf zlib.tar.gz
cd zlib-1.3.1
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install libzip
```
tar -xvf libzip-1.7.3.tar.gz
cd libzip-1.7.3
mkdir build
cd build
cmake ..
make
sudo make install
cd ../..
```

###**Install Text and Internationalization Libraries**

# Install gettext
```
tar -xvf gettext-0.22.5.tar.gz
cd gettext-0.22.5
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install libiconv
```
tar -xvf libiconv-1.17.tar.gz
cd libiconv-1.17
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install Graphic Libraries

# Install libpng
```
tar -xvf libpng-1.6.43.tar.xz
cd libpng-1.6.43
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install freetype
````
tar -xvf freetype-2.10.0.tar.gz
cd freetype-2.10.0
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

###**Install Networking and Security Libraries**

# Install curl
````
tar -xvf curl-7.76.1.tar.gz
cd curl-7.76.1
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install openssl
```
tar -xvf openssl-3.3.0.tar.gz
cd openssl-3.3.0
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

###**Install Other Libraries**

# Install glib
````
tar -xvf glib-2.70.2.tar.xz
cd glib-2.70.2
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install libatomic_ops
```
tar -xvf libatomic_ops-7.8.2.tar.gz
cd libatomic_ops-7.8.2
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install oniguruma
```
tar -xvf onig-6.9.9.tar.gz
cd onig-6.9.9
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install libxml2
```
tar -xvf libxml2-v2.9.14.zip
cd libxml2-v2.9.14
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install jpegtran
```
tar -xvf jpegsrc.v9d.tar.gz
cd jpeg-9d
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Install sqlite3
```
tar -xvf sqlite-autoconf-3410000.tar.gz
cd sqlite-autoconf-3410000
./configure --prefix=/usr/local
make
sudo make install
cd ..
```

# Configure Environment Variables
```
echo 'export PATH="/usr/local/php/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

# Check the directories of installed libraries
```
find /usr/local -name "*.pc"
```

# Check paths of installed binaries
```
which autoconf automake bison bzip2 cmake curl gettext jpegtran libtool m4 pkg-config re2c sqlite3 php
```

# Check if libraries are recognized by pkg-config
```
pkg-config --modversion libssl libcrypto zlib libcurl libxml-2.0 libpng freetype2 libzip oniguruma libatomic_ops bzip2
```

# Display all environment variables relevant to the configuration
```
echo $PATH
echo $PKG_CONFIG_PATH
echo $LD_LIBRARY_PATH
echo $LDFLAGS
echo $CPPFLAGS
echo $OPENSSL_CFLAGS
echo $OPENSSL_LIBS
echo $ZLIB_CFLAGS
echo $ZLIB_LIBS
```

** Now, open your shell's configuration file (~/.zshrc for zsh or ~/.bash_profile for bash) in your preferred text editor and add the following line: **
```
# Adicionando diretórios ao PATH
export PATH="/usr/local/openssl/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/cmake-3.29.3/bin:$PATH"

# Definição de diretórios importantes
export FLUTTER_HOME=/usr/local/flutter
export PATH="$FLUTTER_HOME/bin:$PATH"

# Definição de flags para compilação
export LDFLAGS="-L/usr/local/openssl/lib -L/usr/local/zlib/lib -L/usr/local/lib"
export CPPFLAGS="-I/usr/local/openssl/include -I/usr/local/zlib/include -I/usr/local/include"

# Adicionando diretório pkgconfig ao PKG_CONFIG_PATH
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/local/openssl/lib/pkgconfig:/usr/local/zlib/lib/pkgconfig:/usr/local/libpng/lib/pkgconfig:/usr/local/mysql/lib/pkgconfig:/usr/local/apr/lib/pkgconfig:/usr/local/bison/lib/pkgconfig:/usr/local/bzip2/lib/pkgconfig:/usr/local/libjpeg/lib/pkgconfig:/usr/local/freetype/lib/pkgconfig:/usr/local/libzip/lib/pkgconfig:/usr/local/oniguruma/lib/pkgconfig:/usr/local/libatomic_ops/lib/pkgconfig:$PKG_CONFIG_PATH"

# Adicionando diretório lib ao LD_LIBRARY_PATH
export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"

# Definindo a localização do php.ini
export PHPRC=/usr/local/php/lib

# Adicionando diretório Python ao PATH
export PYTHON_CFLAGS="-I/usr/include/python3.12"

# Adicionando diretório de binários do PHP ao PATH
export PATH="/usr/local/php/bin:$PATH"

# Configuração do OpenSSL
export OPENSSL_CFLAGS="-I/usr/local/openssl/include"
export OPENSSL_LIBS="-L/usr/local/openssl/lib -lssl -lcrypto"

# Configuração do Zlib
export ZLIB_CFLAGS="-I/usr/local/zlib/include"
export ZLIB_LIBS="-L/usr/local/zlib/lib -lz"
```

** Reload environment variables: **
```
source ~/.zshrc
```

** FINAL STEP - Extract, install and verify PHP: **
```
tar -xzvf php-8.3.7.tar.gz
cd ~/Downloads/php-8.3.7
./configure --with-apxs2=/usr/local/apache2/bin/apxs \
            --with-config-file-path=/usr/local/php \
            --with-config-file-scan-dir=/usr/local/php/conf.d \
            --with-mysqli \
            --with-pdo-mysql \
            --with-openssl \
            --with-zlib \
            --with-curl \
            --with-gd \
            --with-jpeg \
            --with-freetype \
            --with-zip \
            --enable-mbstring \
            --enable-exif \
            --enable-intl \
            --enable-soap \
            --enable-bcmath \
            --enable-ftp \
            --enable-sockets \
            --enable-opcache \
            --disable-opcache-jit
make
sudo make install
php -v
```

```

** Very good, now you have php installed, if you want to install composer, read this note. **

> [!NOTE]
> Highlights information that users should take into account, even when skimming.

> [!IMPORTANT]
> Crucial information necessary for users to succeed.

> [!WARNING]
> Critical content demanding immediate user attention due to potential risks.
