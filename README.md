# 🧰 Projeto Oficina Mecânica — Banco de Dados SQL

## Sobre o Projeto

Este projeto foi desenvolvido **com fins didáticos**, com o objetivo de **praticar a criação e manipulação de bancos de dados relacionais** utilizando **scripts SQL**.  
O contexto é o de uma **oficina mecânica**, onde são armazenadas informações sobre clientes, veículos, ordens de serviço, mecânicos, peças e serviços realizados.

O foco principal deste projeto é exercitar a **modelagem lógica** e a **implementação prática** de um banco de dados, aplicando os principais comandos e cláusulas SQL utilizados no dia a dia.

---

## Estrutura do Banco de Dados

O banco de dados foi denominado **`Oficina`** e contém as seguintes tabelas:

- **`cliente`** – Armazena os dados pessoais dos clientes da oficina.  
- **`veiculo`** – Registra os veículos de cada cliente.  
- **`mecanico`** – Contém os mecânicos e suas especialidades.  
- **`servico`** – Lista os tipos de serviços oferecidos pela oficina.  
- **`peca`** – Guarda as peças disponíveis no estoque.  
- **`ordem_servico`** – Representa as ordens abertas para execução de serviços.  
- **`item_servico`** – Relação entre as ordens e os serviços realizados.  
- **`item_peca`** – Relação entre as ordens e as peças utilizadas.

Cada tabela está relacionada conforme o modelo relacional desenvolvido, utilizando **chaves primárias e estrangeiras** para garantir a integridade dos dados.

---

## Tecnologias Utilizadas

- **MySQL** – Sistema de gerenciamento de banco de dados relacional (SGBD)
- **SQL** – Linguagem utilizada para definição e manipulação de dados

---

## Conteúdo Praticado

Durante o desenvolvimento, foram aplicados os principais conceitos e comandos SQL, incluindo:

### 🔹 Criação de Estrutura (DDL)
- `CREATE DATABASE`  
- `CREATE TABLE`  
- Definição de **chaves primárias (PRIMARY KEY)** e **estrangeiras (FOREIGN KEY)**  

### 🔹 Manipulação de Dados (DML)
- `INSERT INTO` para inserção de registros em todas as tabelas  
- Consultas com `SELECT` para recuperar e analisar informações  

### 🔹 Consultas e Filtros (DQL)
Foram exploradas consultas utilizando:

- `SELECT` – Recuperação simples de dados  
- `WHERE` – Aplicação de filtros  
- `ORDER BY` – Ordenação de resultados  
- `GROUP BY` e `HAVING` – Agrupamentos e condições sobre grupos  
- `JOIN` – Junções entre tabelas para consultas complexas  
- **Expressões derivadas** para criação de atributos calculados  

---

##  Exemplos de Consultas

Alguns exemplos de queries presentes no projeto:

```sql
-- Listar todas as ordens de serviço com o nome do cliente e modelo do veículo
SELECT os.id_os, c.nome AS cliente, v.modelo, os.status
FROM ordem_servico os
JOIN veiculo v ON os.id_veiculo = v.id_veiculo
JOIN cliente c ON v.id_cliente = c.id_cliente;
```

```sql
-- Calcular a idade de cada veículo
SELECT modelo, marca, (2025 - ano) AS idade_veiculo
FROM veiculo;
```

```sql
-- Calcular a idade de cada veículo
SELECT modelo, marca, (2025 - ano) AS idade_veiculo
FROM veiculo;
```

```sql
-- Exibir mecânicos com mais de uma ordem de serviço
SELECT id_mecanico, COUNT(*) AS total_os
FROM ordem_servico
GROUP BY id_mecanico
HAVING COUNT(*) > 1;

```



