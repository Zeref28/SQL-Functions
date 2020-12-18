﻿IF (object_id('Camuflar') is not null)
  drop function Camuflar
  
GO

create function Camuflar
(
  @TEXTO varchar(254)
)  
returns varchar(254)
as
BEGIN

	DECLARE @CONTADOR INT = 0;
	DECLARE @TAMANHO INT = LEN(@TEXTO);
	DECLARE @LETRA VARCHAR(1)
	DECLARE @LETRA2 VARCHAR(1)
	DECLARE @OFUSCADA VARCHAR(254)

	SET @OFUSCADA = ''

	WHILE @CONTADOR <= @TAMANHO
		BEGIN

		SET @LETRA = SUBSTRING(@TEXTO,@CONTADOR,1)
		SET @LETRA2 = SUBSTRING(@TEXTO,@CONTADOR,1)

		IF @LETRA = 'A'
			SET @LETRA2 = 'O'
		IF @LETRA = 'O'
			SET @LETRA2 = 'A'

		IF @LETRA ='E'
			SET @LETRA2 = 'I'
		IF @LETRA = 'I'
			SET @LETRA2 = 'E'

		IF @LETRA = 'R'
			SET @LETRA2 = 'L'
		IF @LETRA = 'L'
			SET @LETRA2 = 'R'

		IF @LETRA = 'D'
			SET @LETRA2 = 'T'
		IF @LETRA = 'T'
			SET @LETRA2 = 'D'

		IF @LETRA = 'Q'
			SET @LETRA2 = 'G'
		IF @LETRA = 'G'
			SET @LETRA2 = 'Q'

		IF @LETRA = 'N'
			SET @LETRA2 = 'M'
		IF @LETRA = 'M'
			SET @LETRA2 = 'N'

		IF @LETRA = 'P'
			SET @LETRA2 = 'B'
		IF @LETRA = 'B'
			SET @LETRA2 = 'P'

		IF @LETRA = 'F'
			SET @LETRA2 = 'V'
		IF @LETRA = 'V'
			SET @LETRA2 = 'F'

		IF @LETRA = '1'
			SET @LETRA2 = '2'
		IF @LETRA = '2'
			SET @LETRA2 = '1'

		IF @LETRA = '3'
			SET @LETRA2 = '4'
		IF @LETRA = '4'
			SET @LETRA2 = '3'

		IF @LETRA = '3'
			SET @LETRA2 = '4'
		IF @LETRA = '4'
			SET @LETRA2 = '3'

		IF @LETRA = '5'
			SET @LETRA2 = '6'
		IF @LETRA = '6'
			SET @LETRA2 = '5'

		IF @LETRA = '7'
			SET @LETRA2 = '8'
		IF @LETRA = '8'
			SET @LETRA2 = '7'			

		SET @OFUSCADA = @OFUSCADA + @LETRA2;
		SET @CONTADOR = @CONTADOR + 1;
	END
	
	return @OFUSCADA
END
