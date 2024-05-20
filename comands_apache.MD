###**MY COMANDS LINE FOR APACHE**

- Description: This command checks the current running Apache configuration and displays important information such as root directories, log files, and Apache users and groups.

````
sudo apachectl -t -D DUMP_RUN_CFG
```

- Description: This command stops the running Apache service. It stops all Apache processes that are currently running.

```
sudo apachectl stop
````

Description: This command lists all processes running on the system that contain "httpd" in their name. It is useful for checking whether Apache is running and identifying its processes.

```
ps aux | grep httpd
```

- Description: This command forces the termination of a specific Apache process. It is useful when the normal stop command (sudo apachectl stop) fails to stop Apache.

````
sudo kill -9 <PID_do_Apache>
```


> [!NOTE]
> Highlights information that users should take into account, even when skimming.

> [!IMPORTANT]
> Crucial information necessary for users to succeed.

> [!WARNING]
> Critical content demanding immediate user attention due to potential risks.
