# 🐳 Treinando MySQL em um Container Docker! 

> 🎯 Ambiente prático para aprender e praticar MySQL usando Docker, com um banco de dados temático de "Parks and Recreation"! 

[![MySQL Version](https://img.shields.io/badge/MySQL-latest-blue?style=for-the-badge&logo=mysql)](https://www.mysql.com/)
[![Docker](https://img.shields.io/badge/Docker-required-blue?style=for-the-badge&logo=docker)](https://www.docker.com/)

## ⚡ Pré-requisitos

- 🐳 Docker instalado em sua máquina
- 🛠️ Docker Compose instalado

## 🚀 Como iniciar o container

1. Abra um terminal na pasta do projeto e execute:

```bash
docker-compose up -d
```

✨ O comando acima irá:
- 🔥 Criar e iniciar o container MySQL
- 🗃️ Configurar o banco de dados "Parks_and_Recreation"
- 📜 Executar os scripts SQL iniciais da pasta `sql-scripts`

## Informações de Conexão

- **Host**: localhost
- **Porta**: 3306
- **Banco de dados**: Parks_and_Recreation
- **Usuário**: admin
- **Senha**: 8770

## Como acessar o banco de dados

### Usando MySQL CLI

Se você tiver o MySQL Client instalado localmente, pode conectar usando:

```bash
mysql -h localhost -P 3306 -u admin -p
```
Digite a senha quando solicitado: `8770`

### Usando ferramentas gráficas

Você pode usar ferramentas como:
- MySQL Workbench
- DBeaver
- DataGrip

Use as informações de conexão listadas acima para configurar sua conexão.

## Como parar o container

Para parar o container, execute:

```bash
docker-compose down
```

## 📁 Estrutura do Projeto

```tree
.
├── docker-compose.yml    # Configuração do Docker
├── mysql_data/          # Dados persistentes do MySQL
├── sql-scripts/         # Scripts SQL de inicialização
└── commands/           # Comandos e scripts do projeto
    └── scripts-sql/    # Scripts SQL de desenvolvimento (queries, views, etc)
```

### 💡 Salvando Scripts do DBeaver

Por padrão, o DBeaver salva os scripts em `C:\Users\<seu-usuario>\AppData\Roaming\DBeaverData\workspace6\General\Scripts\`.
Para salvar os scripts no projeto:

1. No DBeaver, após criar seu script, clique em "Save As" (Ctrl + Shift + S)
2. Navegue até a pasta do projeto `commands/scripts-sql`
3. Dê um nome descritivo ao seu script (ex: `consulta_funcionarios.sql`)

## 📝 Observações

- 💾 Os dados do banco são persistidos na pasta `mysql_data`
- 🔄 Os scripts SQL na pasta `sql-scripts` são executados automaticamente na primeira inicialização do container
