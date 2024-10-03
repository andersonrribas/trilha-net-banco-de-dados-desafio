-- 1 Buscar o nome e ano dos filmes
SELECT  
	Nome, Ano 
FROM
	Filmes f ;

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	Nome, Ano 
FROM
	Filmes f 
ORDER BY Ano ;
	
-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT 
	*
FROM
	Filmes f 
WHERE 
	Nome LIKE 'de volta para o futuro' ;
	
-- 4 Buscar os filmes lançados em 1997
SELECT 
	*
FROM
	Filmes f 
WHERE 
	Ano = 1997 ;

-- 5 Buscar os filmes lançados APÓS o ano 2000
	SELECT 
		*
	FROM
		Filmes f
	WHERE 
		Ano > 2000 ;

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
	*
FROM
	Filmes f 
WHERE 
	Duracao BETWEEN 100 AND 150 
ORDER BY 
	Duracao ASC ;

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
    Ano, 
    COUNT(*) AS Quantidade 
FROM 
    Filmes f
GROUP BY 
    f.Ano 
 ORDER BY 
	Quantidade DESC ;

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	PrimeiroNome , UltimoNome 
FROM 
	Atores a 
WHERE 
	Genero = 'M' ;

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
	PrimeiroNome , UltimoNome 
FROM 
	Atores a 
WHERE 
	Genero = 'F' 
ORDER BY 
	PrimeiroNome ;


-- 10 Buscar o nome do filme e o gênero
SELECT 
	f.Nome , g.Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme 
INNER JOIN 
	Generos g ON g.Id = fg.IdGenero ;


-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	f.Nome , g.Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme 
INNER JOIN 
	Generos g ON g.Id = fg.IdGenero 
WHERE 
	g.Genero LIKE 'Mistério' ;

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM 
	Filmes f 
INNER JOIN
	ElencoFilme ef ON f.Id = ef.IdFilme 
INNER JOIN 
	Atores a ON a.Id = ef.IdAtor ;

