

--Achando o valor total do crédito
--Crie um script usando um cursor para achar o valor total de todos os créditos de todos os clientes.
--https://cursos.alura.com.br/course/tsql-com-sql-server-2017

DECLARE @OLIMITE FLOAT

DECLARE CURSOR2  CURSOR FOR
SELECT [LIMITE DE CREDITO] FROM [dbo].[TABELA DE CLIENTES];
OPEN CURSOR2
	FETCH NEXT FROM CURSOR2 INTO @OLIMITE
	WHILE @@FETCH_STATUS = 0
BEGIN

SELECT @OLIMITE
		FETCH NEXT FROM CURSOR2 INTO @OLIMITE
END
CLOSE CURSOR2
DEALLOCATE CURSOR2
		