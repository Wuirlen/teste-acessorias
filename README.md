# Projeto PHP com Docker e MySQL

Este projeto é uma aplicação PHP que segue o padrão MVC, utilizando Docker e MySQL para facilitar o desenvolvimento e a implantação.

## Tecnologias Utilizadas

- **Docker**: Para gerenciamento de containers
- **MySQL**: Banco de dados relacional
- **PHP**: Linguagem de programação para o backend
- **Padrão MVC**: Estruturação do código para melhor organização e manutenção

## Como Executar o Projeto

### 1. Clonar o Repositório

```sh
 git clone https://github.com/seu-usuario/seu-repositorio.git
 cd seu-repositorio
```

### 2. Subir os Containers

Execute o comando abaixo para iniciar os serviços:

```sh
docker compose up -d
```

### 3. Acessar a Aplicação

Após subir os containers, acesse a aplicação pelo navegador:

```
http://localhost:8080
```

## Estrutura do Projeto

```
/seu-projeto
│── /app               # Código-fonte da aplicação (MVC)
│── /config            # Configurações do banco de dados
│── /public            # Arquivos públicos e ponto de entrada
│── /docker            # Configuração dos containers
│── docker-compose.yml # Arquivo de configuração do Docker
│── README.md          # Documentação do projeto
```

## Banco de Dados

- **Host**: `db`
- **Usuário**: `root`
- **Senha**: `password`
- **Banco**: `meubanco`

As configurações do banco de dados podem ser ajustadas no arquivo `config/database.php`.
