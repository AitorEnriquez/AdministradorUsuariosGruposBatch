@echo off

Rem Definir 'Variables' que se van a utilizar
set choice=
set usuario=
set grupo=
Rem FIN Definir variables



Rem Bienvenida
:start
echo Bienvenido, que deseas hacer?
pause
Rem FIN Bienvenida



Rem Menu principal
:Seleccion1
cls
echo Menu principal
echo=================================
echo Selecciona una opcion:
echo (1) Opciones de usuarios.
echo (2) Opciones de grupo.
echo (0) Salir.
echo==================================


set /p choice=

if '%choice%' == '1' goto Seleccion2
if '%choice%' == '2' goto Seleccion3
if '%choice%' == '0' goto Salir

echo El numero "%choice%" no es valido.
pause
goto Seleccion1
Rem FIN Menu principal



Rem Menu de usuarios
:Seleccion2
cls
echo Menu de usuarios
echo=================================
echo Selecciona una opcion:
echo (1) Agregar un usuario
echo (2) Eliminar un usuario
echo (3) Agregar un usuario a un grupo
echo (4) Eliminar un usuario de un grupo
echo (0) Volver
echo=================================

set /p choice=

if '%choice%' == '1' goto AgregarU
if '%choice%' == '2' goto EliminarU
if '%choice%' == '3' goto AgregarUG
if '%choice%' == '4' goto EliminarUG
if '%choice%' == '0' goto Seleccion1

echo El numero "%choice%" no es valido
pause
goto Seleccion2
Rem FIN Menu de usuarios



Rem Menu de grupos
:Seleccion3
cls
echo Menu de grupos
echo=================================
echo Selecciona una opcion:
echo (1) Agregar un grupo
echo (2) Eliminar un grupo
echo (3) Agregar un usuario a un grupo
echo (4) Eliminar un usuario de un grupo
echo (0) Volver
echo=================================
set /p choice=

if '%choice%' == '1' goto AgregarG
if '%choice%' == '2' goto EliminarG
if '%choice%' == '3' goto AgregarUG
if '%choice%' == '4' goto EliminarUG
if '%choice%' == '0' goto Seleccion1

echo El numero "%choice%" no es valido
pause
goto Seleccion3
Rem FIN Menu de grupos



Rem Agregar usuario
:AgregarU
cls
echo Introduce el usuario que quieras crear

set /p usuario=
:PreguntaU
cls
echo Se va a crear el usuario "%usuario%", quieres continuar? (s=Si/n=No/c=Cancelar)
set /p choice=
if '%choice%' == 'S'    	goto    AgregandoU 
if '%choice%' == 's'    	goto    AgregandoU 
if '%choice%' == 'Si'    	goto    AgregandoU 
if '%choice%' == 'si'    	goto    AgregandoU 
if '%choice%' == 'n'    	goto 	AgregarU
if '%choice%' == 'no'    	goto 	AgregarU
if '%choice%' == 'N'    	goto 	AgregarU
if '%choice%' == 'No'    	goto 	AgregarU
if '%choice%' == 'c'		goto	Seleccion2
if '%choice%' == 'cancelar'	goto	Seleccion2
if '%choice%' == 'C'		goto	Seleccion2
if '%choice%' == 'Cancelar'	goto	Seleccion2

goto AgregarU

:AgregandoU
echo Creando usuario "%usuario%"...
echo=================================


REM codigo


echo=================================
echo Se ha creado el usuario "%usuario%" correctamente.
pause
cls
echo Quieres crear otro usuario? (s=Si)/(n=No)
set /p choice=
if '%choice%' == 'S'	goto	AgregarU 
if '%choice%' == 's'	goto	AgregarU 
if '%choice%' == 'Si'	goto	AgregarU 
if '%choice%' == 'si'	goto	AgregarU
goto Seleccion1
Rem FIN Agregar usuario



Rem Agregar Grupo
:AgregarG
cls
echo Introduce el grupo que quieras crear

set /p grupo=
cls

echo Se va a crear el grupo "%grupo%", quieres continuar? (S/N)
set /p choice=
if '%choice%' == 	'S'			goto	AgregandoG 
if '%choice%' == 	's'			goto	AgregandoG 
if '%choice%' == 	'Si'		goto	AgregandoG 
if '%choice%' == 	'si'		goto	AgregandoG 
if '%choice%' == 	'n'    		goto 	AgregarG
if '%choice%' == 	'no'   		goto 	AgregarG
if '%choice%' == 	'N'    		goto 	AgregarG
if '%choice%' == 	'No'   		goto 	AgregarG
if '%choice%' == 	'c'			goto	Seleccion3
if '%choice%' == 	'cancelar'	goto	Seleccion3
if '%choice%' == 	'C'			goto	Seleccion3
if '%choice%' == 	'Cancelar'	goto	Seleccion3
goto AgregarG

:AgregandoG
echo Creando grupo "%grupo%"...
echo=================================


REM codigo


echo=================================
echo Se ha creado el grupo "%grupo%" correctamente.
pause
cls
echo Quieres crear otro grupo? (S/N)
set /p choice=
if '%choice%' == 'S'	goto	AgregarG 
if '%choice%' == 's'	goto	AgregarG 
if '%choice%' == 'Si'	goto	AgregarG 
if '%choice%' == 'si'	goto	AgregarG
goto Seleccion1
Rem FIN Agregar grupo



Rem Eliminar usuario
:EliminarU
cls
echo Introduce el usuario que quieras eliminar

set /p usuario=
cls
echo Se va a eliminar el usuario "%usuario%", quieres continuar? (s=Si/n=No)
set /p choice=
if '%choice%' == 'S'	goto	EliminandoU 
if '%choice%' == 's'	goto	EliminandoU 
if '%choice%' == 'Si'	goto	EliminandoU 
if '%choice%' == 'si'	goto	EliminandoU 
goto EliminarU

:EliminandoU
echo Eliminando usuario "%usuario%"...
echo=================================


REM codigo


echo=================================
echo Se ha eliminado el usuario "%usuario%" correctamente.
pause
cls
echo Quieres eliminar otro usuario? (s=Si)/(n=No)
set /p choice=
if '%choice%' == 'S'	goto	EliminarU 
if '%choice%' == 's'	goto	EliminarU 
if '%choice%' == 'Si'	goto	EliminarU 
if '%choice%' == 'si'	goto	EliminarU
goto Seleccion1
Rem FIN Eliminar usuario



Rem Eliminar grupo
:EliminarG
cls
echo Introduce el grupo que quieras eliminar

set /p grupo=
cls
echo Se va a eliminar el grupo "%grupo%", quieres continuar? (s=Si/n=No)
set /p choice=
if '%choice%' == 'S'	goto	EliminandoG 
if '%choice%' == 's'	goto	EliminandoG 
if '%choice%' == 'Si'	goto	EliminandoG 
if '%choice%' == 'si'	goto	EliminandoG 
goto EliminarG

:EliminandoG
echo Eliminando grupo "%grupo%"...
echo=================================


REM codigo


echo=================================
echo Se ha eliminado el grupo "%grupo%" correctamente.
pause
cls
echo Quieres eliminar otro grupo? (s=Si)/(n=No)
set /p choice=
if '%choice%' == 'S'	goto	EliminarU 
if '%choice%' == 's'	goto	EliminarU 
if '%choice%' == 'Si'	goto	EliminarU 
if '%choice%' == 'si'	goto	EliminarU
goto Seleccion1
Rem FIN Eliminar usuario


Rem Agregar usuario a grupo
:AgregarUG
echo Que usuario quieres agregar? A que grupo?
set /p usuario=Usuario: 
set /p grupo=Grupo: 
echo Quieres agregar a "%usuario%" al grupo "%grupo%"?
pause
Rem FIN Agregar usuario a grupo

Rem Salida
:Salir
cls
echo Agur.
pause
exit
Rem FIN Salida