### **How to manually build and install PHP in Mac OS Sonoma**
STEP ONE - Download Automake, Libtool, Autoconf, M4, Pkg-config,
Getext, Libatomic_ops, GLib until reaching PHP. I recommend that
you use the releases that specify here, why there are conflicts
between release versions, this left me sleepless for days. 
Follow the order below as there are dependencies.

** LINKS AND RELESES**
- AUTOMAKE (automake-1.16.5) https://ftp.gnu.org/gnu/automake/
- LIBTOOL (libtool-2.4.7) https://ftp.gnu.org/gnu/libtool/
- AUTOCONF (autoconf-2.72) https://ftp.gnu.org/gnu/autoconf/
- M4 (m4-1.4.19) https://ftp.gnu.org/gnu/m4/
- PKG-CONFIG (pkg-config-0.29.2): https://pkgconfig.freedesktop.org/releases/
- GETEXT (gettext-0.22.5) https://www.gnu.org/software/gettext/gettext.html
- LIBATOMIC_OPS (libatomic_ops-7.8.2) https://github.com/ivmai/libatomic_ops/releases
- GLIB (xxx) xxx

** STEP TWO - Extract, install and verify AUTOMAKE:**
```
- tar -xzf automake-1.16.5.tar.xz
- cd automake-1.16.5
- ./configure
- make
- sudo make install
- automake --version 
```

** STEP THREE - Extract, install and verify LIBTOOL:**
```
- tar -xzf libtool-2.4.7.tar.xz
- cd libtool-2.4.7
- ./configure
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
- gettext --version
```

**I stopped here today**


> [!NOTE]
> Highlights information that users should take into account, even when skimming.

> [!IMPORTANT]
> Crucial information necessary for users to succeed.

> [!WARNING]
> Critical content demanding immediate user attention due to potential risks.

