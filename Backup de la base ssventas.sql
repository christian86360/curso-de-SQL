create proc backup_base

as
Backup database [ssventas]
to disk =N'B:\programas SQL\ssventas\ssventas.bak'
with description =N'Respaldo de la base de datos del sistema de ventas',
noformat,
init,
NAME=N'ssventas',
skip,
norewind,
nounload,
stats=10,
checksum