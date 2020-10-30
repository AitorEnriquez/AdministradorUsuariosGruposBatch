@echo off
set choice=

Rem Menu Principal
:start
echo Bienvenido, que deseas hacer?
pause
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

if '%choice%' == '1' goto OpcionesU
if '%choice%' == '2' goto OpcionesG
if '%choice%' == '0' goto Salir

Tu seleccion ("%choice%") no es valida
pause
goto Seleccion1
Rem Fin Menu Principal

Rem Menu de Usuarios
:OpcionesU
cls
echo Has seleccionado las opciones de usuarios, que deseas hacer?
pause
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

Tu seleccion ("%choice%") no es valida
pause
goto Seleccion2
Rem Fin Menu de Usuarios

Rem Menu de grupos
:OpcionesG
cls
echo Has seleccionado las Opciones de grupo, que deseas hacer?
pause
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

echo Tu seleccion ("%choice%") no es valida
pause
goto Seleccion3
Rem Fin Menu de grupos

Rem Agregar usuario
:AgregarU
cls
echo Introduce el usuario que quieras crear

set /p usuario=
:PreguntaU
cls
echo Se va a crear el usuario "%usuario%", quieres continuar? (s=Si/n=No)
set /p choice=
if '%choice%' == 'S'    goto    AgregandoU 
if '%choice%' == 's'    goto    AgregandoU 
if '%choice%' == 'Si'    goto    AgregandoU 
if '%choice%' == 'si'    goto    AgregandoU 
if '%choice%' == 'n'    goto Seleccion2
if '%choice%' == 'no'    goto Seleccion2
if '%choice%' == 'N'    goto Seleccion2
if '%choice%' == 'No'    goto Seleccion2

echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaU

:AgregandoU
echo Creando usuario "%usuario%"...
echo=================================


REM codigo


echo=================================
echo Se ha creado el usuario "%usuario%" correctamente.
pause
:preguntaU2
cls
echo Quieres crear otro usuario? (s=Si)/(n=No)
set /p choice=
if '%choice%' == 'S'    goto    AgregarU 
if '%choice%' == 's'    goto    AgregarU 
if '%choice%' == 'Si'    goto    AgregarU 
if '%choice%' == 'si'    goto    AgregarU
if '%choice%' == 'n'    goto Seleccion1
if '%choice%' == 'no'    goto Seleccion1
if '%choice%' == 'N'    goto Seleccion1
if '%choice%' == 'No'   goto Seleccion1
echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaU2

Rem FIN Agregar usuario

Rem Agregar Grupo
:AgregarG
cls
echo Introduce el grupo que quieras crear

set /p grupo=
cls

echo Se va a crear el grupo "%grupo%", quieres continuar? (S/N)
set /p choice=
if '%choice%' == 'S'    goto    AgregandoG 
if '%choice%' == 's'    goto    AgregandoG 
if '%choice%' == 'Si'    goto    AgregandoG 
if '%choice%' == 'si'    goto    AgregandoG 
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
if '%choice%' == 'S'    goto    AgregarG 
if '%choice%' == 's'    goto    AgregarG 
if '%choice%' == 'Si'    goto    AgregarG 
if '%choice%' == 'si'    goto    AgregarG
goto Seleccion1
Rem FIN Agregar grupo


:Salir
cls
echo Agur.
pause 
exit