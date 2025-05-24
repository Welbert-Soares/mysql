# MySQL Docker Setup

Este repositório contém a configuração do Docker para um banco de dados MySQL com o tema "Parks and Recreation".

## Pré-requisitos

- Docker instalado
- Docker Compose instalado

## Como iniciar o container

1. Abra um terminal na pasta do projeto e execute:

```bash
docker-compose up -d
```

O comando acima irá:
- Criar e iniciar o container MySQL
- Configurar o banco de dados "Parks_and_Recreation"
- Executar os scripts SQL iniciais da pasta `sql-scripts`

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

## Estrutura do Projeto

```
.
├── docker-compose.yml    # Configuração do Docker
├── mysql_data/          # Dados persistentes do MySQL
└── sql-scripts/         # Scripts SQL de inicialização
```

## Observações

- Os dados do banco são persistidos na pasta `mysql_data`
- Os scripts SQL na pasta `sql-scripts` são executados automaticamente na primeira inicialização do container
