CREATE FUNCTION sf_RemoveExtraChars (@NAME nvarchar(50))
RETURNS nvarchar(50)
AS
BEGIN
  declare @TempString nvarchar(100)
  set @TempString = @NAME 
  set @TempString = LOWER(@TempString)

  set @TempString =  replace(@TempString,'à', 'a')
  set @TempString =  replace(@TempString,'ã', 'a')
  set @TempString =  replace(@TempString,'á', 'a')
  set @TempString =  replace(@TempString,'â', 'a')
  set @TempString =  replace(@TempString,'ä', 'a')
  set @TempString =  replace(@TempString,'å', 'a')
  set @TempString =  replace(@TempString,'æ', 'a')

  set @TempString =  replace(@TempString,'è', 'e')
  set @TempString =  replace(@TempString,'é', 'e')
  set @TempString =  replace(@TempString,'ê', 'e')
  set @TempString =  replace(@TempString,'ë', 'e')

  set @TempString =  replace(@TempString,'ì', 'i')
  set @TempString =  replace(@TempString,'í', 'i')
  set @TempString =  replace(@TempString,'î', 'i')
  set @TempString =  replace(@TempString,'ï', 'i')

  set @TempString =  replace(@TempString,'ò', 'o')
  set @TempString =  replace(@TempString,'ô', 'o')
  set @TempString =  replace(@TempString,'ó', 'o')
  set @TempString =  replace(@TempString,'õ', 'o')
  set @TempString =  replace(@TempString,'ö', 'o')
  set @TempString =  replace(@TempString,'ø', 'o')

  set @TempString =  replace(@TempString,'ù', 'u')
  set @TempString =  replace(@TempString,'ú', 'u')
  set @TempString =  replace(@TempString,'û', 'u')
  set @TempString =  replace(@TempString,'ü', 'u')

  set @TempString =  replace(@TempString,'ç', 'c')
  set @TempString =  replace(@TempString,'ç', 'c')

  set @TempString =  replace(@TempString,'ý', 'y')

  -- set @TempString =  replace(@TempString,'''', '')
  -- set @TempString =  replace(@TempString,'`', '')
  -- set @TempString =  replace(@TempString,'-', '')
  -- set @TempString =  replace(@TempString,' ', '')
  return @TempString
END
GO