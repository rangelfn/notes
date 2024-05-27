### **How to manually build and install PHP in Mac OS Sonoma**
STEP ONE - Download Automake, Libtool, Autoconf, M4, Pkg-config,
Getext, Libatomic_ops, GLib until reaching PHP. I recommend that
you use the releases that specify here, why there are conflicts
between release versions, this left me sleepless for days. 
Follow the order below as there are dependencies.

** REQUIREMENTS LINKS AND RELESES**
- AUTOMAKE (automake-1.16.5) https://ftp.gnu.org/gnu/automake/
- LIBTOOL (libtool-2.4.7) https://ftp.gnu.org/gnu/libtool/
- AUTOCONF (autoconf-2.72) https://ftp.gnu.org/gnu/autoconf/
- M4 (m4-1.4.19) https://ftp.gnu.org/gnu/m4/
- PKG-CONFIG (pkg-config-0.29.2): https://pkgconfig.freedesktop.org/releases/
- GETEXT (gettext-0.22.5) https://www.gnu.org/software/gettext/gettext.html
- LIBATOMIC_OPS (libatomic_ops-7.8.2) https://github.com/ivmai/libatomic_ops/releases
- LIBXML2 (libxml2-2.9.14) https://github.com/GNOME/libxml2/archive/refs/tags/v2.9.14.tar.gz
- SQLITE_AUTOCONF (sqlite-autoconf-3410000) https://www.sqlite.org/2023/sqlite-autoconf-3410000.tar.gz
- LIBICONV (libiconv-1.16) https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.16.tar.gz
- OPENSSL (openssl-1.1.1) https://ftp.openssl.org/source/old/1.1.1/openssl-1.1.1w.tar.gz
- ZLIB (zlib-1.3.1) https://www.zlib.net/current/zlib.tar.gz
- CURL (curl-7.65.1) https://curl.se/download/curl-7.65.1.tar.gz
- LIBPNG (libpng-1.6.37) https://download.sourceforge.net/libpng/libpng-1.6.37.tar.gz
- FREETYPE (freetype-2.10.4) https://github.com/kkos/oniguruma/releases/download/v6.9.9/onig-6.9.9.tar.gz
- ONIGURUMA (onig-6.9.9) https://github.com/kkos/oniguruma/archive/refs/tags/v6.9.9.zip
- REC2 (re2c-3.1) https://github.com/skvadrik/re2c/archive/refs/tags/3.1.zip
- PHP (php-8.3.7) https://www.php.net/distributions/php-8.3.7.tar.gz

** STEP TWO - Extract, install and verify AUTOMAKE:**
```
tar -xzvf sqlite-autoconf-3410000.tar.gz
cd sqlite-autoconf-3410000
./configure --prefix=/usr/local
make
sudo make install
automake --version 
```

** STEP THREE - Extract, install and verify LIBTOOL:**
```
tar -xzf libtool-2.4.7.tar.xz
cd libtool-2.4.7
./configure --prefix=/usr/local
make
sudo make install
libtool --version 
```

** STEP FOUR - Extract, install and verify AUTOCONF:**
```
tar -xzf autoconf-2.72.tar.xz
cd autoconf-2.72
./configure --prefix=/usr/local
make
sudo make install
autoconf --version
```

** STEP FIVE - Extract, install and verify M4: **
```
tar -xzf m4-1.4.19.tar.xz
cd m4-1.4.19
./configure --prefix=/usr/local
make
sudo make install
m4 --version
```

** STEP SIX - Extract, install and verify PKG-CONFIG: **
```
tar -xzf pkg-config-0.29.2.tar.gz
cd pkg-config-0.29.2
CFLAGS="-Wno-int-conversion" CXXFLAGS="-Wno-int-conversion" ./configure --prefix="/usr/local" --with-pc-path="/usr/local/lib/pkgconfig" --with-internal-glib
make
sudo make install
pkg-config --version
```

** STEP SEVEN - Extract, install and verify GETTEXT: **
```
tar -xzf gettext-0.22.5.tar.gz
cd gettext-0.22.5
./configure --prefix=/usr/local
make
sudo make install
gettext --version
```

** STEP EIGHT - Extract, install and verify LIBATOMIC_OPS: **
```
tar -xzf libatomic_ops-7.8.2.tar.gz
cd libatomic_ops-7.8.2
./configure --prefix=/usr/local
make
sudo make install
ls /usr/local/lib | grep atomic_ops
```

** STEP NINE - Extract, install and verify LIBXML2: **
```
tar -xzvf v2.9.14.tar.gz
cd libxml2-2.9.14
./autogen.sh --prefix=/usr/local
make
sudo make install
xml2-config --version
```

** STEP TEN - Extract, install and verify SQLITE: **
```
tar -xzvf v2.9.14.tar.gz
cd libxml2-2.9.14
./autogen.sh --prefix=/usr/local
make
sudo make install
sqlite3 --version
```

** STEP ELEVEN - Extract, install and verify LIBICONV: **
```
cd libiconv-1.16
./configure --prefix=/usr/local
make
sudo make install
pkg-config --modversion libiconv
```

** STEP TWOELVE - Extract, install and verify OPENSSL: **
```
tar -xzvf openssl-1.1.1w.tar.gz
cd openssl-1.1.1w
./config --prefix=/usr/local
make
sudo make install
pkg-config --modversion openssl
```

** STEP THIRTEEN - Extract, install and verify ZLIB: **
```
tar -xzvf zlib-zlib-1.3.1.tar.gz
cd zlib-1.3.1
./configure --prefix=/usr/local
make
sudo make install
pkg-config --modversion zlib
```

** STEP FOURTEEN Extract, install and verify LIBPNG: **
```
tar -xzvf libpng-1.6.37.tar.gz
cd libpng-1.6.37
./configure --prefix=/usr/local
make
sudo make install
pkg-config --modversion libpng
```

** STEP FIFTEN - Extract, install and verify BZIP2: **
```
curl -O https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz
tar -xzvf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8 
make
sudo make install PREFIX=/usr/local
pkg-config --modversion bzip2
```

** STEP SIXTEEN - Extract, install and verify JPEG-9D: **
```
curl -O http://www.ijg.org/files/jpegsrc.v9d.tar.gz
tar -xzvf jpegsrc.v9d.tar.gz
cd jpeg-9d
./configure --prefix=/usr/local
make
sudo make install
```

** STEP SEVENTEEN - Extract, install and verify FREETYPE: **
```
tar -xzvf freetype-2.10.4.tar.gz
cd freetype-2.10.4
./configure --prefix=/usr/local
make 
sudo make install
pkg-config --modversion freetype2
```

** STEP EIGHTEEN - Extract, install and verify ONIGURUMA: **
```
tar -xzvf onig-6.9.9.tar.gz
cd onig-6.9.9
make
sudo make install PREFIX=/usr/local
pkg-config --modversion oniguruma
```

** STEP NINETEEN - Extract, install and verify RE2C: **
```
tar -xzvf re2c-3.1.tar.gz
./configure --prefix=/usr/local
cd re2c-3.1
make
sudo make install 
re2c --version
```

** STEP TWENTY - Check and Configure file ~/.zshrc:**
```
# Check the directories of installed libraries
find /usr/local -name "*.pc"

# Check paths of installed binaries
which autoconf automake bison bzip2 cmake curl gettext jpegtran libtool m4 pkg-config re2c sqlite3 php

# Check if libraries are recognized by pkg-config
pkg-config --modversion libssl libcrypto zlib libcurl libxml-2.0 libpng freetype2 libzip oniguruma libatomic_ops bzip2

# Display all environment variables relevant to the configuration
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

** Very good, now you have php installed, if you want to install composer, read this note. **

> [!NOTE]
> Highlights information that users should take into account, even when skimming.

> [!IMPORTANT]
> Crucial information necessary for users to succeed.

> [!WARNING]
> Critical content demanding immediate user attention due to potential risks.

