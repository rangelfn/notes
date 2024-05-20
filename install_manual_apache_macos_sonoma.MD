### **How to manually build and install apache in Mac OS Sonoma**
STEP ONE - Please download the files APR, APR-util, PCRE and HTTP Server :

** LINKS **
- APR: http://apr.apache.org/download.cgi
- APR-util: http://apr.apache.org/download.cgi
- PCRE - https://www.pcre.org/
- HTTPD SERVER - http://httpd.apache.org/download.cgi

** STEP TWO - Extract and compile APR:**
```
- tar -xzf apr-x.y.z.tar.gz
- cd apr-x.y.z
- ./configure
- make
- sudo make install
```

** STEP THREE - Extract and compile APR-util:**
```
- tar -xzf apr-util-x.y.z.tar.gz
- cd apr-util-x.y.z
- ./configure --with-apr=/usr/local/apr
- make
- sudo make install
```

** STEP THREE - Extract and compile PCRE (Perl Compatible Regular Expressions):**
```
- tar -xzf pcre-x.y.tar.gz
- cd pcre-x.y
- ./configure
- make
- sudo make install
```

** STEP THREE - Extract and compile HTTTPD SEVER: **
```
- tar -xzf httpd-x.y.z.tar.gz
- cd httpd-x.y.z
- ./configure --enable-so --enable-mods-shared=all --prefix=/usr/local/apache2 --with-apr=/usr/local/apr --with-- - apr-util=/usr/local/apr/bin/apu-1-config --with-pcre
- make
- sudo make install
```

** RESTAR Apache: **
```
sudo /usr/local/apache2/bin/apachectl restart
```
