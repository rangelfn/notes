### **How to Configure Apache Manually on macOS Sonoma**

**STEP ONE - Ensure Apache is Installed:**
Install Apache if not already installed. You can download Apache HTTP Server from 
the official website: [Apache HTTP Server](http://httpd.apache.org/download.cgi).
```
- httpd -v
```

**STEP TWO - Update the PATH:**
Add the manually installed Apache directory (/usr/local/apache2/bin) to your PATH. 
Open your shell configuration file (`~/.zshrc` or `~/.bash_profile`) and add the
following line:
```
- export PATH="/usr/local/apache2/bin:$PATH"
```

**STEP TREE - Reload PATH:**
Reload the shell configuration
```
- source ~/.zshrc or
- source ~/.bash_profile
```

**STEP FOUR - Configure Apache:**
Open the Apache configuration file:
```
sudo code /usr/local/apache2/conf/httpd.conf
```

If you don't have the `code` command installed, you can add it by opening VS Code, ressing
`Cmd+Shift+P`, typing `shell command` and selecting `Install 'code' command in PATH`.

**STEP FIVE - Update httpd.conf:**
Update the `DocumentRoot` and `<Directory>` directives to point to your project directory:
```
DocumentRoot "/Users/rangelfn/WebServer"
  <Directory "/Users/rangelfn/WebServer">
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>
```

**STEP SIX - Adjust Directory Permissions:**
Ensure Apache has the necessary permissions to access the directories:
```
- sudo chmod 755 /Users/rangelfn
- sudo chown -R $(whoami)
- /Users/rangelfn/WebServer
- sudo chmod -R 755 /Users/rangelfn/WebServer
```

**STEP SEVEN - Restart Apache:**
Restart Apache to apply the changes:
```
- sudo /usr/local/apache2/bin/apachectl restart # OR
- sudo apachectl restart
```

**STEP EIGHT - Verify Configuration:**
Verify the Apache configuration to ensure there are no syntax errors:```
- sudo /usr/local/apache2/bin/apachectl configtest
```
- You should see `Syntax OK`.
```

** STEP NINE -Verify erros: **
Check the Apache error logs if there are any issues:
```
- sudo tail -f /usr/local/apache2/logs/error_log
```

**FINAL STEP - Test the Setup:**
Open a web browser and navigate to `http://localhost` to verify that your Apache server is serving the content from the `/Users/rangelfn/WebServer` directory.

> [!NOTE]
> Ensure that you have configured the correct paths and permissions for the directories used by Apache.

> [!IMPORTANT]
> Always restart Apache after making changes to the configuration file to apply the updates.

> [!WARNING]
> Incorrect permissions or misconfigured paths can lead to access issues or server errors. Always verify permissions and paths carefully.

### Conclusion
By following these steps, you should have a fully functioning Apache server on your macOS Sonoma, configured to serve your projects from the specified directory.



