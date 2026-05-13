/*

Geral


1. Conectar ao MySQL
mysql -u usuario -p
-u → usuário
-p → pede senha

Exemplo:

mysql -u root -p
2. Mostrar bancos de dados
SHOW DATABASES;

Lista todos os bancos existentes.

3. Criar banco de dados
CREATE DATABASE loja;

Cria um banco chamado loja.

4. Selecionar banco de dados
USE loja;

Define o banco que será usado.

5. Mostrar tabelas
SHOW TABLES;

Lista as tabelas do banco atual.

6. Criar tabela
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade INT
);
Explicação
INT → número inteiro
VARCHAR(100) → texto até 100 caracteres
AUTO_INCREMENT → aumenta automaticamente
PRIMARY KEY → identificador único
7. Ver estrutura da tabela
DESCRIBE clientes;

ou

DESC clientes;

Mostra colunas e tipos.

8. Inserir dados
INSERT INTO clientes (nome, email, idade)
VALUES ('João', 'joao@email.com', 30);

Adiciona um registro.

9. Consultar dados
Todos os registros
SELECT * FROM clientes;
Colunas específicas
SELECT nome, idade FROM clientes;
10. Filtrar dados
SELECT * FROM clientes
WHERE idade > 25;
Operadores comuns
Operador	Significado
=	igual
>	maior
<	menor
>=	maior ou igual
<=	menor ou igual
!=	diferente
11. Ordenar resultados
SELECT * FROM clientes
ORDER BY nome ASC;
ASC → crescente
DESC → decrescente
12. Atualizar dados
UPDATE clientes
SET idade = 31
WHERE id = 1;
Importante

Sem WHERE, todos os registros serão alterados.

13. Excluir dados
DELETE FROM clientes
WHERE id = 1;

Remove registros.

14. Excluir tabela
DROP TABLE clientes;

Apaga a tabela inteira.

15. Excluir banco de dados
DROP DATABASE loja;

Apaga o banco inteiro.

16. Adicionar coluna
ALTER TABLE clientes
ADD telefone VARCHAR(20);
17. Remover coluna
ALTER TABLE clientes
DROP COLUMN telefone;
18. Limitar resultados
SELECT * FROM clientes
LIMIT 5;

Mostra apenas 5 registros.

19. Buscar texto parecido
SELECT * FROM clientes
WHERE nome LIKE '%Jo%';
%

Representa qualquer sequência de caracteres.

Exemplos:

Consulta	Resultado
'Jo%'	começa com Jo
'%Jo'	termina com Jo
'%Jo%'	contém Jo
20. Contar registros
SELECT COUNT(*) FROM clientes;

Conta quantos registros existem.

21. Agrupar dados
SELECT idade, COUNT(*)
FROM clientes
GROUP BY idade;

Agrupa registros pela idade.

22. Fazer backup
mysqldump -u root -p loja > backup.sql
23. Restaurar backup
mysql -u root -p loja < backup.sql
24. Criar usuário
CREATE USER 'joao'@'localhost'
IDENTIFIED BY 'senha123';
25. Dar permissões
GRANT ALL PRIVILEGES ON loja.*
TO 'joao'@'localhost';
26. Atualizar permissões
FLUSH PRIVILEGES;
Tipos de JOIN
INNER JOIN

Retorna apenas correspondências.

SELECT *
FROM pedidos
INNER JOIN clientes
ON pedidos.cliente_id = clientes.id;
Diferença entre DELETE, TRUNCATE e DROP
Comando	O que faz
DELETE	remove linhas
TRUNCATE	limpa toda tabela
DROP	remove tabela inteira
Ordem básica de aprendizado SQL
SELECT
WHERE
ORDER BY
INSERT
UPDATE
DELETE
JOIN
GROUP BY
INDEX
VIEW, PROCEDURE, TRIGGER
Exemplo completo
CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    nota DECIMAL(5,2)
);

INSERT INTO alunos (nome, nota)
VALUES
('Ana', 9.5),
('Carlos', 7.8);

SELECT * FROM alunos;

UPDATE alunos
SET nota = 8.0
WHERE nome = 'Carlos';

DELETE FROM alunos
WHERE nome = 'Ana';

*/







/*

atualizar

UPDATE pessoa SET nome = "Sara Pimentel Oliveira" WHERE nome = "sara";

*/
/*
Aula 20 udemy

DELETE FROM pessoa WHERE nome = "EEEEEEEEEEEmerson";

*/

/*
Aula 19 udemy

INSERT INTO pessoa (nome, email, idade) VALUES (
    "EEEEEEEEEEEmerson", 
    "emerson_yeda@hotmail.com",
    9
);

SELECT * FROM pessoa;
*/

/*
Aula 18 udemy

CREATE TABLE pessoa(
    nome VARCHAR(50),
    email VARCHAR(100),
    idade INT
);




Microsoft Windows [versão 10.0.19045.6466]
(c) Microsoft Corporation. Todos os direitos reservados.

C:\Users\Emerson>mysql
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: NO)

C:\Users\Emerson>mysql -h localhost -u root -p
Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

mysql> CREATE DATABASE
    -> pessoa
    -> ^C
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> CREATE DATABASE pessoa;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| pessoa             |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE pessoa
Database changed
mysql> CREATE TABLE pessoa(
    ->     nome VARCHAR(50),
    ->     email VARCHAR(100),
    ->     idade INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW TABLES
    -> ^C
mysql> SHOW TABLES;
+------------------+
| Tables_in_pessoa |
+------------------+
| pessoa           |
+------------------+
1 row in set (0.01 sec)

mysql> DESCRIBE pessoa
    -> ^C
mysql> DESCRIBE pessoa;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| nome  | varchar(50)  | YES  |     | NULL    |       |
| email | varchar(100) | YES  |     | NULL    |       |
| idade | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>

*/
