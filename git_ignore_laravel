
# 📘 Manual de Publicação de Projeto no GitHub via Terminal (VS Code)

Este manual apresenta o passo a passo para subir um projeto local para um repositório remoto no GitHub, utilizando o terminal do Visual Studio Code e Git.

---

## 📂 1. Navegue até a pasta do projeto

```bash
cd C:\caminho
```

---

## 🧬 2. Inicialize o repositório Git

```bash
git init
```

---

## 📝 3. Crie um arquivo `.gitignore` com o padrão do Laravel

```bash
@"
vendor/
node_modules/
.env
.phpunit.result.cache
Homestead.json
Homestead.yaml
npm-debug.log
yarn-error.log
storage/*.key
storage/*.log
/public/storage
/public/hot
/storage/app/public
/storage/framework/cache/data
/storage/framework/sessions
/storage/framework/views
/storage/logs
.idea/
.vscode/
.DS_Store
.env.*
"@ | Out-File -Encoding utf8 .gitignore
```

---

## ✅ 4. Adicione todos os arquivos ao Git

```bash
git add .
```

---

## 📌 5. Faça o primeiro commit

```bash
git commit -m "Primeiro commit do projeto Nome"
```

---

## 🌐 6. Crie um repositório vazio no GitHub

Acesse: [https://github.com/new](https://github.com/new)

- Nome: `monitur`
- NÃO selecione README, .gitignore ou LICENSE
- Clique em **Create repository**

Copie a URL do repositório (exemplo):

```
https://github.com/seu-usuario/nome.git
```

---

## 🔗 7. Adicione o repositório remoto

```bash
git remote add origin https://github.com/seu-usuario/nome.git
```

---

## 🚀 8. Envie os arquivos para o GitHub

Se estiver na branch `master` e quiser trocar para `main`:

```bash
git branch -M main
```

Então:

```bash
git push -u origin main
```

---

## ✅ 9. Verifique no GitHub

Acesse seu repositório no navegador e confirme se os arquivos foram enviados com sucesso.

---

## 🔒 Importante

**Nunca envie o arquivo `.env`** para o GitHub. Ele contém informações sensíveis como senhas, chaves de API e banco de dados.

---
