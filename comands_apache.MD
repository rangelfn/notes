**sudo apachectl -t -D DUMP_RUN_CFG:**
Descrição: Esse comando verifica a configuração atual do Apache em execução e exibe informações importantes, como diretórios raiz, arquivos de log e usuários e grupos do Apache.

**sudo apachectl stop:**
Descrição: Este comando para o serviço Apache em execução. Ele interrompe todos os processos Apache que estão em execução no momento.

**ps aux | grep httpd:**
Descrição: Esse comando lista todos os processos em execução no sistema que contêm "httpd" em seu nome. É útil para verificar se o Apache está em execução e identificar seus processos.

**sudo kill -9 <PID_do_Apache>:**
Descrição: Este comando força o encerramento de um processo específico do Apache. É útil quando o comando de parada normal (sudo apachectl stop) falha em parar o Apache.
