### **How to manually build and install PHP in Mac OS Sonoma**
STEP ONE - Download Automake, Libtool, Autoconf, M4, Pkg-config,
Getext, Libatomic_ops, GLib until reaching PHP. I recommend that
you use the releases that specify here, why there are conflicts
between release versions, this left me sleepless for days. 
Follow the order below as there are dependencies.

** REQUIREMENTS - LINKS AND RELESES**
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
- PHP (php-8.3.7) https://www.php.net/distributions/php-8.3.7.tar.gz

** STEP TWO - Extract, install and verify AUTOMAKE:**
```
- tar -xzvf sqlite-autoconf-3410000.tar.gz
- ccd sqlite-autoconf-3410000
- ./configure
- make
- sudo make install
- automake --version 
```

** STEP THREE - Extract, install and verify LIBTOOL:**
```
- tar -xzf libtool-2.4.7.tar.xz
- cd libtool-2.4.7
- ./configure --prefix=/usr/local
- make
- sudo make install
- libtool --version 
```

** STEP FOUR - Extract, install and verify AUTOCONF:**
```
- tar -xzf autoconf-2.72.tar.xz
- cd autoconf-2.72
- ./configure
- make
- sudo make install
- autoconf --version
```

** STEP FIVE - Extract, install and verify M4: **
```
- tar -xzf m4-1.4.19.tar.xz
- cd m4-1.4.19
- ./configure 
- make
- sudo make install
- m4 --version
```

** STEP SIX - Extract, install and verify PKG-CONFIG: **
```
- tar -xzf pkg-config-0.29.2.tar.gz
- cd pkg-config-0.29.2
- CFLAGS="-Wno-int-conversion" CXXFLAGS="-Wno-int-conversion" ./configure --prefix="/usr/local" --with-pc-path="/usr/local/lib/pkgconfig" --with-internal-glib
- make
- sudo make install
- pkg-config --version
```

** STEP SIX - Extract, install and verify GETTEXT: **
```
- tar -xzf gettext-0.22.5.tar.gz
- cd gettext-0.22.5
- ./configure 
- make
- sudo make install
- gettext --version
```

** STEP SIX - Extract, install and verify LIBATOMIC_OPS: **
```
- tar -xzf libatomic_ops-7.8.2.tar.gz
- cd libatomic_ops-7.8.2
- ./configure 
- make
- sudo make install
- ls /usr/local/lib | grep atomic_ops
```

** STEP SEVEN - Extract, install and verify LIBXML2: **
```
- tar -xzvf v2.9.14.tar.gz
- cd libxml2-2.9.14
- ./autogen.sh --prefix=/usr/local
- make
- sudo make install
- xml2-config --version
```

** STEP EIGHT - Extract, install and verify SQLITE: **
```
- tar -xzvf v2.9.14.tar.gz
- cd libxml2-2.9.14
- ./autogen.sh --prefix=/usr/local
- make
- sudo make install
- sqlite3 --version
```

** STEP NINE - Extract, install and verify LIBICONV: **
```
- cd libiconv-1.16
- ./configure --prefix=/usr/local
- make
- sudo make install
```

** STEP TEN - Open your shell's configuration file (~/.zshrc for zsh or ~/.bash_profile for bash) in your preferred text editor and add the following line:**
```
- export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
- source ~/.zshrc # ou source ~/.bash_profile
```

** FINAL STEP - Extract, install and verify PHP: **
- tar -xzvf php-8.3.7.tar.gz
- cd ~/Downloads/php-8.3.7
- ./configure --with-apxs2=/usr/local/apache2/bin/apxs \
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
            --enable-opcache
- make
- sudo make install
- php -v


** Very good, now you have php installed, if you want to install composer, read this note. **

> [!NOTE]
> Highlights information that users should take into account, even when skimming.

> [!IMPORTANT]
> Crucial information necessary for users to succeed.

> [!WARNING]
> Critical content demanding immediate user attention due to potential risks.

