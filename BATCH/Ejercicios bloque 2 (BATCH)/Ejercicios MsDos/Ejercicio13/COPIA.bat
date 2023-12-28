:: 13.- Crear un fichero llamado COPIA.BAT que copia los ficheros FICH1.TXT,
:: ARCH2.DOC y MIO.DAT en el directorio C:\MICOPIA con el menor número de líneas
:: posibles.

@echo off
for %%c ("FICH1.TXT", "ARCH2.DOC", "MIO.DAT") do (
    copy %%c "C:\MICOPIA"
    ) 