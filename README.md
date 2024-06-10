# 1 - Cenário 

"Bom dia, boa tarde e boa noite a todos. Foi percebido a necessidade de um sistema de banco de dados na Owl Comics Inc. devido a falta de controle que a empresa está tendo ao tentar controlar os diversos processos internos. Vamos começar definindo cada quadro que temos necessidade, primeiro iremos cadastrar o principal: as HQs. Elas deverão ter um identificador chamado ISBN(um tipo de identificação com 13 digitos), deverão ter o título, gênero, data de lançamento, preço, quantidade dele em estoque, quem é o autor da historia e o ilustrador responsavel. 
  Para o autor queremos poder cadastrar seu CPF, nome, sobrenome, uma biografia para ser aplicada automaticamente nos livros, data de nascimento,nacionalidade, quais projetos ele está e(ou) foi responsavel e prazo para entrega dos trabalhos.
  Para o ilustrador queremos cadastrar seu CPF, nome, sobrenome, uma pequena biografia, data de nascimento,nacionalidade, estilo artistico(as opções são manga, cartoon, realista, etc.), prazo para entrega dos trabalhos e quais projetos ele está e(ou) foi responsavel.
  Vendemos em lote para algumas livrarias e bibliotecas, queremos manter um cadastro de clientes também. Queremos o CNPJ do lugar, a razão social, e-mail, número de telefone, endereço, cidade que esta localizado, código postal e país.
  E por ultimo, quando esses clientes fizerem algum pedido deverá ser registrado no sistema. Cada venda devera ter um número de identificação, a data que foi feito o orçamento, a data da venda, o CNPJ e nome do cliente e por fim o total da compra."
# 2 - Modelo Conceitual
  <img src="Owl-Comics/Conceitual.png" />
  
# 3 - Modelagem Lógica
  <img src="Owl-Comics/Lógico.png" />
  
# 4 - Modelagem Física
## Criação do banco de dados:
```sql 
    CREATE DATABASE OwlComics;
    USE OwlComics;
```

## Criação da tabela quadrinhos:
```sql
  CREATE TABLE quadrinhos(
    ISBN         int(13)             IDENTITY      PRIMARY KEY
    titulo       varchar(60)
    genero       varchar(15)
    lancamento   date
    preco        decimal(4.2)
    estoque      int
  );
```
## Criação da tabela Ilustrador:
```sql
  CREATE TABLE Ilustrador(
    CPF             int(11)             IDENTITY      PRIMARY KEY
    nome            varchar(80)
    biografia       varchar(500)
    nacionalidade   varchar(20)
    estilo          varchar(15)
    nascimento      date
  );
```
## Criação da tabela Autor:
```sql
  CREATE TABLE Autor(
    CPF             int(11)             IDENTITY      PRIMARY KEY
    nome            varchar(80)
    biografia       varchar(500)
    nacionalidade   varchar(20)
    nascimento      date
  );
```
## Criação da tabela Cliente:
```sql
  CREATE TABLE Cliente(
    CNPJ             int(14)             IDENTITY      PRIMARY KEY
    telefone        int(8)
    razao           varchar(100)
    email           varchar(100)
    endereco        varchar(250)
    codigo          int(8)
  );
```
## Criação da tabela:
```sql
  CREATE TABLE Pedido(
    VENDAID            int(6)        IDENTITY      PRIMARY KEY
    valor              decimal(4.2)
    dataorcamento      date
    datavenda          date
  );
```
# 5 - Inserção de dados nas tabelas:

## Inserindo dados na tabela quadrinhos:
```sql
INSERT INTO quadrinhos (ISBN, titulo, genero, data_lancamento, preco, quantidade_estoque) VALUES
  (9781234567890, 'Batman: Ano Um', 'Ação', '1987-02-01', 29.99, 50),
  (9781234567891, 'Homem-Aranha: De Volta ao Lar', 'Aventura', '2017-07-07', 35.99, 30),
  (9781234567892, 'Watchmen', 'Drama', '1986-09-01', 39.99, 20),
  (9781234567893, 'V de Vingança', 'Distopia', '1982-03-01', 34.99, 25),
  (9781234567894, 'Sandman: Prelúdios e Noturnos', 'Fantasia', '1989-11-01', 49.99, 15),
  (9781234567895, 'Saga', 'Ficção Científica', '2012-03-14', 29.99, 40),
  (9781234567896, 'The Walking Dead', 'Terror', '2003-10-08', 24.99, 35),
  (9781234567897, 'Maus', 'História', '1991-11-19', 19.99, 60),
  (9781234567898, 'Akira', 'Cyberpunk', '1982-12-20', 45.99, 22),
  (9781234567899, 'Death Note', 'Suspense', '2003-12-01', 27.99, 18),
  (9781234567900, 'One Piece', 'Aventura', '1997-07-22', 31.99, 50),
  (9781234567901, 'Naruto', 'Ação', '1999-09-21', 29.99, 45),
  (9781234567902, 'Dragon Ball', 'Aventura', '1984-12-03', 33.99, 30),
  (9781234567903, 'Bleach', 'Ação', '2001-08-07', 28.99, 40),
  (9781234567904, 'Fullmetal Alchemist', 'Fantasia', '2001-07-12', 37.99, 25),
  (9781234567905, 'Attack on Titan', 'Ação', '2009-09-09', 29.99, 35),
  (9781234567906, 'My Hero Academia', 'Ação', '2014-07-07', 30.99, 28),
  (9781234567907, 'Black Clover', 'Fantasia', '2015-02-16', 32.99, 27),
  (9781234567908, 'Demon Slayer', 'Aventura', '2016-02-15', 34.99, 23),
  (9781234567909, 'Jujutsu Kaisen', 'Fantasia', '2018-03-05', 36.99, 20);
```

## Inserindo dados na tabela Ilustrador

```sql
INSERT INTO Ilustrador (CPF, nome, biografia, nacionalidade, estilo, nascimento) VALUES
  (12345678901, 'Frank Miller', 'Autor e ilustrador famoso por trabalhos como "Sin City" e "The Dark Knight Returns".', 'Americana', 'Noir', '1957-01-27'),
  (12345678902, 'Alan Moore', 'Conhecido por suas obras icônicas "Watchmen" e "V de Vingança".', 'Britânica', 'Drama', '1953-11-18'),
  (12345678903, 'Neil Gaiman', 'Escritor e ilustrador, famoso por "Sandman" e "American Gods".', 'Britânica', 'Fantasia', '1960-11-10'),
  (12345678904, 'Hirohiko Araki', 'Criador do mangá "JoJo\'s Bizarre Adventure".', 'Japonesa', 'Surrealismo', '1960-06-07'),
  (12345678905, 'Akira Toriyama', 'Criador de "Dragon Ball" e "Dr. Slump".', 'Japonesa', 'Aventura', '1955-04-05'),
  (12345678906, 'Katsuhiro Otomo', 'Conhecido pelo mangá "Akira".', 'Japonesa', 'Cyberpunk', '1954-04-14'),
  (12345678907, 'Stan Lee', 'Cocriador de muitos super-heróis da Marvel, como Homem-Aranha, X-Men e Homem de Ferro.', 'Americana', 'Super-heróis', '1922-12-28'),
  (12345678908, 'Jack Kirby', 'Pioneiro dos quadrinhos, cocriador do Capitão América e muitos outros.', 'Americana', 'Super-heróis', '1917-08-28'),
  (12345678909, 'Will Eisner', 'Um dos grandes nomes dos quadrinhos, criador de "The Spirit".', 'Americana', 'Crime', '1917-03-06'),
  (12345678910, 'Moebius', 'Ilustrador francês conhecido por seu trabalho em ficção científica e fantasia.', 'Francesa', 'Sci-fi', '1938-05-08'),
  (12345678911, 'Osamu Tezuka', 'Conhecido como o "Deus do Mangá", criador de "Astro Boy".', 'Japonesa', 'Diversos', '1928-11-03'),
  (12345678912, 'Rumiko Takahashi', 'Famosa por séries como "Inuyasha" e "Ranma ½".', 'Japonesa', 'Aventura', '1957-10-10'),
  (12345678913, 'Naoko Takeuchi', 'Criadora de "Sailor Moon".', 'Japonesa', 'Magical Girl', '1967-03-15'),
  (12345678914, 'Jim Lee', 'Conhecido por seu trabalho na Marvel e DC, incluindo "X-Men" e "Batman".', 'Coreana-Americana', 'Super-heróis', '1964-08-11'),
  (12345678915, 'John Romita Jr.', 'Famoso por seu trabalho no "Homem-Aranha" e "Demolidor".', 'Americana', 'Super-heróis', '1956-08-17'),
  (12345678916, 'Hergé', 'Criador de "As Aventuras de Tintim".', 'Belga', 'Aventura', '1907-05-22'),
  (12345678917, 'Hayao Miyazaki', 'Famoso diretor e ilustrador de filmes animados como "A Viagem de Chihiro".', 'Japonesa', 'Fantasia', '1941-01-05'),
  (12345678918, 'Yoshihiro Togashi', 'Criador de "Yu Yu Hakusho" e "Hunter x Hunter".', 'Japonesa', 'Aventura', '1966-04-27'),
  (12345678919, 'Eiichiro Oda', 'Criador do popular mangá "One Piece".', 'Japonesa', 'Aventura', '1975-01-01'),
  (12345678920, 'Masashi Kishimoto', 'Criador de "Naruto".', 'Japonesa', 'Aventura', '1974-11-08');

```
## Inserindo dados na tabela Autor
```sql
INSERT INTO Autor (CPF, nome, biografia, nacionalidade, nascimento) VALUES
(12345678901, 'J.K. Rowling', 'Autora da série Harry Potter, uma das mais vendidas e amadas no mundo.', 'Britânica', '1965-07-31'),
(12345678902, 'George R.R. Martin', 'Autor da série de livros "As Crônicas de Gelo e Fogo", que inspirou a série de TV "Game of Thrones".', 'Americana', '1948-09-20'),
(12345678903, 'J.R.R. Tolkien', 'Famoso autor de "O Senhor dos Anéis" e "O Hobbit".', 'Britânica', '1892-01-03'),
(12345678904, 'Stephen King', 'Conhecido como o mestre do horror, autor de "O Iluminado", "It", entre outros.', 'Americana', '1947-09-21'),
(12345678905, 'Agatha Christie', 'Renomada escritora de romances policiais, criadora de Hercule Poirot e Miss Marple.', 'Britânica', '1890-09-15'),
(12345678906, 'Isaac Asimov', 'Um dos maiores escritores de ficção científica de todos os tempos, autor da série "Fundação".', 'Americana', '1920-01-02'),
(12345678907, 'Arthur C. Clarke', 'Autor de "2001: Uma Odisseia no Espaço" e outros clássicos da ficção científica.', 'Britânica', '1917-12-16'),
(12345678908, 'H.P. Lovecraft', 'Criador de uma vasta mitologia de terror cósmico, autor de "O Chamado de Cthulhu".', 'Americana', '1890-08-20'),
(12345678909, 'Ernest Hemingway', 'Autor vencedor do Nobel de Literatura, conhecido por "O Velho e o Mar".', 'Americana', '1899-07-21'),
(12345678910, 'Mark Twain', 'Famoso autor americano, conhecido por "As Aventuras de Tom Sawyer" e "As Aventuras de Huckleberry Finn".', 'Americana', '1835-11-30'),
(12345678911, 'Jane Austen', 'Autora de clássicos da literatura como "Orgulho e Preconceito" e "Razão e Sensibilidade".', 'Britânica', '1775-12-16'),
(12345678912, 'Leo Tolstoy', 'Um dos maiores escritores russos, autor de "Guerra e Paz" e "Anna Karenina".', 'Russa', '1828-09-09'),
(12345678913, 'Fyodor Dostoevsky', 'Renomado autor russo, conhecido por "Crime e Castigo" e "Os Irmãos Karamazov".', 'Russa', '1821-11-11'),
(12345678914, 'Gabriel García Márquez', 'Autor colombiano, vencedor do Nobel de Literatura, conhecido por "Cem Anos de Solidão".', 'Colombiana', '1927-03-06'),
(12345678915, 'J.D. Salinger', 'Famoso autor de "O Apanhador no Campo de Centeio".', 'Americana', '1919-01-01'),
(12345678916, 'Harper Lee', 'Autora de "O Sol é para Todos", vencedor do Prêmio Pulitzer.', 'Americana', '1926-04-28'),
(12345678917, 'Virginia Woolf', 'Uma das maiores escritoras modernistas do século 20, autora de "Mrs. Dalloway" e "Ao Farol".', 'Britânica', '1882-01-25'),
(12345678918, 'Franz Kafka', 'Autor de obras influentes como "A Metamorfose" e "O Processo".', 'Austríaca', '1883-07-03'),
(12345678919, 'Charles Dickens', 'Famoso autor vitoriano, conhecido por "Oliver Twist", "David Copperfield" e outros.', 'Britânica', '1812-02-07'),
(12345678920, 'James Joyce', 'Autor irlandês, famoso por "Ulisses" e "Retrato do Artista quando Jovem".', 'Irlandesa', '1882-02-02');

```

## Inserindo dados na tabela Cliente
```sql
INSERT INTO Cliente (CNPJ, telefone, razao, email, endereco, codigo) VALUES
(12345678000101, 12345678, 'Empresa A', 'contato@empresaA.com', 'Rua A, 123, Cidade A, Estado A', 10000001),
(12345678000102, 23456789, 'Empresa B', 'contato@empresaB.com', 'Rua B, 234, Cidade B, Estado B', 10000002),
(12345678000103, 34567890, 'Empresa C', 'contato@empresaC.com', 'Rua C, 345, Cidade C, Estado C', 10000003),
(12345678000104, 45678901, 'Empresa D', 'contato@empresaD.com', 'Rua D, 456, Cidade D, Estado D', 10000004),
(12345678000105, 56789012, 'Empresa E', 'contato@empresaE.com', 'Rua E, 567, Cidade E, Estado E', 10000005),
(12345678000106, 67890123, 'Empresa F', 'contato@empresaF.com', 'Rua F, 678, Cidade F, Estado F', 10000006),
(12345678000107, 78901234, 'Empresa G', 'contato@empresaG.com', 'Rua G, 789, Cidade G, Estado G', 10000007),
(12345678000108, 89012345, 'Empresa H', 'contato@empresaH.com', 'Rua H, 890, Cidade H, Estado H', 10000008),
(12345678000109, 90123456, 'Empresa I', 'contato@empresaI.com', 'Rua I, 901, Cidade I, Estado I', 10000009),
(12345678000110, 12345679, 'Empresa J', 'contato@empresaJ.com', 'Rua J, 123, Cidade J, Estado J', 10000010),
(12345678000111, 23456780, 'Empresa K', 'contato@empresaK.com', 'Rua K, 234, Cidade K, Estado K', 10000011),
(12345678000112, 34567891, 'Empresa L', 'contato@empresaL.com', 'Rua L, 345, Cidade L, Estado L', 10000012),
(12345678000113, 45678902, 'Empresa M', 'contato@empresaM.com', 'Rua M, 456, Cidade M, Estado M', 10000013),
(12345678000114, 56789013, 'Empresa N', 'contato@empresaN.com', 'Rua N, 567, Cidade N, Estado N', 10000014),
(12345678000115, 67890124, 'Empresa O', 'contato@empresaO.com', 'Rua O, 678, Cidade O, Estado O', 10000015),
(12345678000116, 78901235, 'Empresa P', 'contato@empresaP.com', 'Rua P, 789, Cidade P, Estado P', 10000016),
(12345678000117, 89012346, 'Empresa Q', 'contato@empresaQ.com', 'Rua Q, 890, Cidade Q, Estado Q', 10000017),
(12345678000118, 90123457, 'Empresa R', 'contato@empresaR.com', 'Rua R, 901, Cidade R, Estado R', 10000018),
(12345678000119, 12345670, 'Empresa S', 'contato@empresaS.com', 'Rua S, 123, Cidade S, Estado S', 10000019),
(12345678000120, 23456781, 'Empresa T', 'contato@empresaT.com', 'Rua T, 234, Cidade T, Estado T', 10000020);

```

## Inserindo dados na tabela Pedido

```sql
INSERT INTO Pedidos (VENDAID, valor, dataorcamento, datavenda) VALUES
(100001, 299.99, '2023-01-01', '2023-01-10'),
(100002, 399.50, '2023-01-05', '2023-01-15'),
(100003, 150.75, '2023-01-10', '2023-01-20'),
(100004, 499.99, '2023-01-15', '2023-01-25'),
(100005, 199.99, '2023-01-20', '2023-01-30'),
(100006, 350.00, '2023-01-25', '2023-02-04'),
(100007, 275.50, '2023-01-30', '2023-02-09'),
(100008, 450.75, '2023-02-01', '2023-02-11'),
(100009, 325.99, '2023-02-05', '2023-02-15'),
(100010, 100.00, '2023-02-10', '2023-02-20'),
(100011, 225.25, '2023-02-15', '2023-02-25'),
(100012, 375.99, '2023-02-20', '2023-03-02'),
(100013, 425.50, '2023-02-25', '2023-03-05'),
(100014, 275.75, '2023-03-01', '2023-03-11'),
(100015, 350.25, '2023-03-05', '2023-03-15'),
(100016, 499.50, '2023-03-10', '2023-03-20'),
(100017, 299.99, '2023-03-15', '2023-03-25'),
(100018, 399.75, '2023-03-20', '2023-03-30'),
(100019, 199.50, '2023-03-25', '2023-04-04'),
(100020, 450.99, '2023-03-30', '2023-04-10');
```

# 6 - Crud:
## Leitura de dados de uma tabela especifica (nesse caso, quadrinhos):
```sql
SELECT * FROM quadrinhos
```
<img src="Owl-Comics/Selção dos Quadrinhos.png" />

# Inserção de um dado em uma tabela e leitura do mesmo (nesse caso, ilustrador):
```sql
INSERT INTO ilustrador (nome, biografia, nacionalidade, estilo, nascimento) VALUES
('Eu :3', 'Famoso musico e ilustrador(na minha cabeça)', 'Brasileiro', 'Fantasia', '2005-08-20');
```
<img src="Owl-Comics/Seleção Ilustradores após inserção.png" />

# Exclusão do Ilustrador "Eu :3":
```sql
DELETE FROM ilustrador WHERE nome = 'Eu :3';
```
<img src="Owl-Comics/Exclusão.png" />

 # 7 - Relatorios:

##   1. Selecionar todos os quadrinhos de um determinado gênero:
```sql
SELECT * FROM quadrinhos
WHERE genero = 'Ficção Científica';
```
<img src="Owl-Comics/Relatorio 1.png" />

## 2. Selecionar todos os ilustradores de uma nacionalidade específica
```sql
SELECT * FROM ilustrador
WHERE nacionalidade = 'Japonesa';
```
<img src="Owl-Comics/Relatorio 2.png" />

## 3. Ordenar os clientes pelo nome da empresa (razao) em ordem alfabética
```sql
SELECT * FROM Cliente
ORDER BY razao ASC;
```
<img src="Owl-Comics/Relatorio 3.png" />

## 4. Selecionar todos os pedidos com valor acima de 200 e ordená-los pela data de venda em ordem decrescente
```sql
SELECT * FROM Pedidos
WHERE valor > 200
ORDER BY datavenda DESC;
```
<img src="Owl-Comics/Relatorio 4.png" />

## 5. Selecionar autores que nasceram após o ano de 1900
```sql
SELECT * FROM Autor
WHERE nascimento > '1900-01-01';
```
<img src="Owl-Comics/Relatorio 5.png" />

## 6. Selecionar todos os quadrinhos lançados em um determinado ano
```sql
SELECT * FROM quadrinhos
WHERE YEAR(data_lancamento) = 2020;
```
<img src="Owl-Comics/Relatorio 6.png" />

## 7. Selecionar todos os ilustradores que trabalham em um determinado estilo e ordenar pelo nome
```sql
SELECT * FROM ilustrador
WHERE estilo = 'Manga'
ORDER BY nome ASC;
```
<img src="Owl-Comics/Relatorio 7.png" />

## 8. Selecionar clientes com um código específico e ordenar por telefone
```sql
SELECT * FROM Cliente
WHERE codigo = 12345601
ORDER BY telefone ASC;
```
<img src="Owl-Comics/Relatorio 8.png" />

## 9. Selecionar pedidos feitos em um determinado intervalo de datas e ordenar por valor
```sql
SELECT * FROM Pedidos
WHERE datavenda BETWEEN '2024-06-01' AND '2024-06-30'
ORDER BY valor DESC;
```
<img src="Owl-Comics/Relatorio 9.png" />

## 10. Selecionar autores de uma nacionalidade específica e ordenar pelo nome
```sql
SELECT * FROM Autor
WHERE nacionalidade = 'Brasileira'
ORDER BY nome ASC;
```
<img src="Owl-Comics/Relatorio 10.png" />
