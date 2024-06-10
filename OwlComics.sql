CREATE DATABASE OwlComics;
USE OwlComics;

CREATE TABLE quadrinhos (
    ISBN BIGINT PRIMARY KEY,
    titulo VARCHAR(255),
    genero VARCHAR(50),
    data_lancamento DATE,
    preco DECIMAL(10, 2),
    quantidade_estoque INT
);

CREATE TABLE ilustrador (
    CPF				INT		IDENTITY		PRIMARY KEY,
    nome			VARCHAR(80),
    biografia		VARCHAR(500),
    nacionalidade	VARCHAR(20),
    estilo			VARCHAR(15),
    nascimento		DATE
);

CREATE TABLE Autor (
    CPF				INT		 IDENTITY		PRIMARY KEY,
    nome			VARCHAR(80),
    biografia		VARCHAR(500),
    nacionalidade	VARCHAR(20),
    nascimento		DATE
);


CREATE TABLE Cliente (
    CNPJ INT	IDENTITY	PRIMARY KEY,
    telefone INT,
    razao VARCHAR(100),
    email VARCHAR(100),
    endereco VARCHAR(250),
    codigo INT
);

CREATE TABLE Pedidos (
    VENDAID INT		IDENTITY PRIMARY KEY,
    valor DECIMAL(6,2),
    dataorcamento DATE,
    datavenda DATE
);


INSERT INTO quadrinhos (ISBN, titulo, genero, data_lancamento, preco, quantidade_estoque) VALUES
(9781234567890, 'Batman: Ano Um', 'A��o', '1987-02-01', 29.99, 50),
(9781234567891, 'Homem-Aranha: De Volta ao Lar', 'Aventura', '2017-07-07', 35.99, 30),
(9781234567892, 'Watchmen', 'Drama', '1986-09-01', 39.99, 20),
(9781234567893, 'V de Vingan�a', 'Distopia', '1982-03-01', 34.99, 25),
(9781234567894, 'Sandman: Prel�dios e Noturnos', 'Fantasia', '1989-11-01', 49.99, 15),
(9781234567895, 'Saga', 'Fic��o Cient�fica', '2012-03-14', 29.99, 40),
(9781234567896, 'The Walking Dead', 'Terror', '2003-10-08', 24.99, 35),
(9781234567897, 'Maus', 'Hist�ria', '1991-11-19', 19.99, 60),
(9781234567898, 'Akira', 'Cyberpunk', '1982-12-20', 45.99, 22),
(9781234567899, 'Death Note', 'Suspense', '2003-12-01', 27.99, 18),
(9781234567900, 'One Piece', 'Aventura', '1997-07-22', 31.99, 50),
(9781234567901, 'Naruto', 'A��o', '1999-09-21', 29.99, 45),
(9781234567902, 'Dragon Ball', 'Aventura', '1984-12-03', 33.99, 30),
(9781234567903, 'Bleach', 'A��o', '2001-08-07', 28.99, 40),
(9781234567904, 'Fullmetal Alchemist', 'Fantasia', '2001-07-12', 37.99, 25),
(9781234567905, 'Attack on Titan', 'A��o', '2009-09-09', 29.99, 35),
(9781234567906, 'My Hero Academia', 'A��o', '2014-07-07', 30.99, 28),
(9781234567907, 'Black Clover', 'Fantasia', '2015-02-16', 32.99, 27),
(9781234567908, 'Demon Slayer', 'Aventura', '2016-02-15', 34.99, 23),
(9781234567909, 'Jujutsu Kaisen', 'Fantasia', '2018-03-05', 36.99, 20);

INSERT INTO ilustrador (nome, biografia, nacionalidade, estilo, nascimento) VALUES
('Frank Miller', 'Autor e ilustrador famoso por trabalhos como "Sin City" e "The Dark Knight Returns."', 'Americana', 'Noir', '1957-01-27'),
('Alan Moore', 'Conhecido por suas obras ic�nicas "Watchmen" e "V de Vingan�a."', 'Brit�nica', 'Drama', '1953-11-18'),
('Neil Gaiman', 'Escritor e ilustrador, famoso por "Sandman" e "American Gods."', 'Brit�nica', 'Fantasia', '1960-11-10'),
('Hirohiko Araki', 'Criador do mang� "JoJos Bizarre Adventure."', 'Japonesa', 'Surrealismo', '1960-06-07'),
('Akira Toriyama', 'Criador de "Dragon Ball" e "Dr. Slump."', 'Japonesa', 'Aventura', '1955-04-05'),
('Katsuhiro Otomo', 'Conhecido pelo mang� "Akira."', 'Japonesa', 'Cyberpunk', '1954-04-14'),
('Stan Lee', 'Cocriador de muitos super-her�is da Marvel, como Homem-Aranha, X-Men e Homem de Ferro.', 'Americana', 'Super-her�is', '1922-12-28'),
('Jack Kirby', 'Pioneiro dos quadrinhos, cocriador do Capit�o Am�rica e muitos outros.', 'Americana', 'Super-her�is', '1917-08-28'),
('Will Eisner', 'Um dos grandes nomes dos quadrinhos, criador de "The Spirit."', 'Americana', 'Crime', '1917-03-06'),
('Moebius', 'Ilustrador franc�s conhecido por seu trabalho em fic��o cient�fica e fantasia.', 'Francesa', 'Sci-fi', '1938-05-08'),
('Osamu Tezuka', 'Conhecido como o "Deus do Mang�", criador de "Astro Boy."', 'Japonesa', 'Diversos', '1928-11-03'),
('Rumiko Takahashi', 'Famosa por s�ries como "Inuyasha" e "Ranma �."', 'Japonesa', 'Aventura', '1957-10-10'),
('Naoko Takeuchi', 'Criadora de "Sailor Moon."', 'Japonesa', 'Magical Girl', '1967-03-15'),
('Jim Lee', 'Conhecido por seu trabalho na Marvel e DC, incluindo "X-Men" e "Batman."', 'Coreana-Americana', 'Super-her�is', '1964-08-11'),
('John Romita Jr.', 'Famoso por seu trabalho no "Homem-Aranha" e "Demolidor."', 'Americana', 'Super-her�is', '1956-08-17'),
('Herg�', 'Criador de "As Aventuras de Tintim."', 'Belga', 'Aventura', '1907-05-22'),
('Hayao Miyazaki', 'Famoso diretor e ilustrador de filmes animados como "A Viagem de Chihiro."', 'Japonesa', 'Fantasia', '1941-01-05'),
('Yoshihiro Togashi', 'Criador de "Yu Yu Hakusho" e "Hunter x Hunter."', 'Japonesa', 'Aventura', '1966-04-27'),
('Eiichiro Oda', 'Criador do popular mang� "One Piece."', 'Japonesa', 'Aventura', '1975-01-01'),
('Masashi Kishimoto', 'Criador de "Naruto."', 'Japonesa', 'Aventura', '1974-11-08');


INSERT INTO Cliente (telefone, razao, email, endereco, codigo) VALUES
(12345678, 'Empresa A', 'empresaA@email.com', 'Rua A, 123', 12345601),
(23456789, 'Empresa B', 'empresaB@email.com', 'Rua B, 456', 23456702),
(34567890, 'Empresa C', 'empresaC@email.com', 'Rua C, 789', 34567803),
(45678901, 'Empresa D', 'empresaD@email.com', 'Rua D, 012', 45678904),
(56789012, 'Empresa E', 'empresaE@email.com', 'Rua E, 345', 56789005),
(67890123, 'Empresa F', 'empresaF@email.com', 'Rua F, 678', 67890106),
(78901234, 'Empresa G', 'empresaG@email.com', 'Rua G, 901', 78901207),
(89012345, 'Empresa H', 'empresaH@email.com', 'Rua H, 234', 89012308),
(90123456, 'Empresa I', 'empresaI@email.com', 'Rua I, 567', 90123409),
(01234567, 'Empresa J', 'empresaJ@email.com', 'Rua J, 890', 01234510),
(12345678, 'Empresa K', 'empresaK@email.com', 'Rua K, 123', 12345611),
(23456789, 'Empresa L', 'empresaL@email.com', 'Rua L, 456', 23456712),
(34567890, 'Empresa M', 'empresaM@email.com', 'Rua M, 789', 34567813),
(45678901, 'Empresa N', 'empresaN@email.com', 'Rua N, 012', 45678914),
(56789012, 'Empresa O', 'empresaO@email.com', 'Rua O, 345', 56789015),
(67890123, 'Empresa P', 'empresaP@email.com', 'Rua P, 678', 67890116),
(78901234, 'Empresa Q', 'empresaQ@email.com', 'Rua Q, 901', 78901217),
(89012345, 'Empresa R', 'empresaR@email.com', 'Rua R, 234', 89012318),
(90123456, 'Empresa S', 'empresaS@email.com', 'Rua S, 567', 90123419),
(01234567, 'Empresa T', 'empresaT@email.com', 'Rua T, 890', 01234520);


INSERT INTO Pedidos (valor, dataorcamento, datavenda) VALUES
(100.00, '2024-06-01', '2024-06-02'),
(150.00, '2024-06-03', '2024-06-04'),
(200.00, '2024-06-05', '2024-06-06'),
(120.00, '2024-06-07', '2024-06-08'),
(180.00, '2024-06-09', '2024-06-10'),
(90.00, '2024-06-11', '2024-06-12'),
(210.00, '2024-06-13', '2024-06-14'),
(170.00, '2024-06-15', '2024-06-16'),
(130.00, '2024-06-17', '2024-06-18'),
(140.00, '2024-06-19', '2024-06-20'),
(160.00, '2024-06-21', '2024-06-22'),
(190.00, '2024-06-23', '2024-06-24'),
(220.00, '2024-06-25', '2024-06-26'),
(230.00, '2024-06-27', '2024-06-28'),
(240.00, '2024-06-29', '2024-06-30'),
(250.00, '2024-07-01', '2024-07-02'),
(260.00, '2024-07-03', '2024-07-04'),
(270.00, '2024-07-05', '2024-07-06'),
(280.00, '2024-07-07', '2024-07-08'),
(290.00, '2024-07-09', '2024-07-10');

INSERT INTO Autor (nome, biografia, nacionalidade, nascimento) VALUES
('Machado de Assis', 'Um dos maiores escritores brasileiros, conhecido por obras como "Dom Casmurro" e "Mem�rias P�stumas de Br�s Cubas."', 'Brasileira', '1839-06-21'),
('J.K. Rowling', 'Autora brit�nica famosa pela s�rie "Harry Potter."', 'Brit�nica', '1965-07-31'),
('Stephen King', 'Escritor americano conhecido por seus livros de terror, como "O Iluminado" e "It - A Coisa."', 'Americana', '1947-09-21'),
('George Orwell', 'Escritor ingl�s conhecido por cl�ssicos como "1984" e "A Revolu��o dos Bichos."', 'Brit�nica', '1903-06-25'),
('Agatha Christie', 'Romancista policial brit�nica, autora de "O Assassinato no Expresso Oriente" e "E N�o Sobrou Nenhum."', 'Brit�nica', '1890-09-15'),
('Gabriel Garc�a M�rquez', 'Escritor colombiano famoso por "Cem Anos de Solid�o" e "O Amor nos Tempos do C�lera."', 'Colombiana', '1927-03-06'),
('Tolkien', 'Autor brit�nico conhecido por criar "O Senhor dos An�is" e "O Hobbit."', 'Brit�nica', '1892-01-03'),
('Jorge Amado', 'Escritor brasileiro famoso por obras como "Gabriela, Cravo e Canela" e "Dona Flor e Seus Dois Maridos."', 'Brasileira', '1912-08-10'),
('Clarice Lispector', 'Escritora brasileira conhecida por sua prosa introspectiva e psicol�gica.', 'Brasileira', '1920-12-10'),
('Dan Brown', 'Autor americano de thrillers, conhecido por "O C�digo Da Vinci" e "Anjos e Dem�nios."', 'Americana', '1964-06-22'),
('Ernest Hemingway', 'Escritor americano conhecido por obras como "O Velho e o Mar" e "Por Quem os Sinos Dobram."', 'Americana', '1899-07-21'),
('Jane Austen', 'Romancista brit�nica do s�culo XIX, conhecida por obras como "Orgulho e Preconceito" e "Emma."', 'Brit�nica', '1775-12-16'),
('Virginia Woolf', 'Escritora brit�nica modernista, conhecida por "Mrs. Dalloway" e "Orlando."', 'Brit�nica', '1882-01-25'),
('F. Scott Fitzgerald', 'Escritor americano, autor de "O Grande Gatsby" e "O �ltimo Magnata."', 'Americana', '1896-09-24'),
('Harper Lee', 'Autora americana, conhecida por "O Sol � para Todos", vencedor do Pr�mio Pulitzer.', 'Americana', '1926-04-28'),
('Mark Twain', 'Autor americano conhecido por "As Aventuras de Tom Sawyer" e "As Aventuras de Huckleberry Finn."', 'Americana', '1835-11-30'),
('Lewis Carroll', 'Autor brit�nico conhecido por "Alice no Pa�s das Maravilhas."', 'Brit�nica', '1832-01-27'),
('Agatha Christie', 'Romancista policial brit�nica, autora de "O Assassinato no Expresso Oriente" e "E N�o Sobrou Nenhum."', 'Brit�nica', '1890-09-15'),
('J.R.R. Tolkien', 'Autor brit�nico conhecido por criar "O Senhor dos An�is" e "O Hobbit."', 'Brit�nica', '1892-01-03'),
('Joanne Rowling', 'Autora brit�nica famosa pela s�rie "Harry Potter."', 'Brit�nica', '1965-07-31');

SELECT * FROM ilustrador;

DELETE FROM ilustrador WHERE nome = 'Eu :3';