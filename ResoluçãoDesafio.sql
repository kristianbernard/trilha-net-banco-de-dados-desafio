--1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'de volta para o futuro'

--4 - Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 101 AND 150 ORDER BY Duracao 

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
-- Acredito que o enunciado esteja errado, pois como não tem o campo duração na consulta ele vai dar erro no Order By - Segui como estava na imagem.
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Ano DESC 

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome 

--10 - Buscar o nome do filme e o g�nero
SELECT F.Nome, G.Genero FROM Filmes f inner join FilmesGenero fg ON F.Id = fg.IdFilme INNER JOIN Generos g on g.Id = FG.IdGenero

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT F.Nome, G.Genero FROM Filmes f inner join FilmesGenero fg ON F.Id = fg.IdFilme INNER JOIN Generos g on g.Id = FG.IdGenero
WHERE g.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f inner join ElencoFilme ef ON F.Id = ef.IdFilme INNER JOIN Atores a on a.Id = ef.IdAtor


