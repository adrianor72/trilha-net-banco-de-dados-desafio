
--1
Select 
	Nome,
	Ano
from Filmes

--2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

--5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10
SELECT Filmes.Nome, Generos.Genero AS Genero
FROM Filmes
JOIN Generos ON Filmes.Id = Generos.Id;

--11
SELECT Filmes.Nome, Generos.Genero AS Genero
FROM Filmes
JOIN Generos ON Filmes.Id = Generos.Id
WHERE Generos.Genero = 'Mistério';

Select * from Filmes

--12
SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id;

