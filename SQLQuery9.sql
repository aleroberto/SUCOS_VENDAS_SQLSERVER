


--Crie uma variável TABELA com um campo INT, 
--use um loop para gravar 100 números aleatórios entre 0 e 1000 nesta tabela. 
--Depois, liste esta tabela em uma consulta.

DECLARE @TABELA TABLE (NUMERO INT)
DECLARE @CONTADOR INT
	SET @CONTADOR = 0

WHILE @CONTADOR < 100
	BEGIN
	--PRINT @CONTADOR
	INSERT INTO @TABELA VALUES ([dbo].[NUMEROALEATORIO](1,100))
		SET @CONTADOR += 1;
	END
--INSERT INTO @TABELA VALUES (1)

SELECT * FROM @TABELA