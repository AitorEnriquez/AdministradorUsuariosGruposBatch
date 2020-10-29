@echo off
set choice=

:start
echo Bienvenido, que deseas hacer?
pause
:Seleccion1
cls
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

echo El numero "%choice%" no es valido.
pause
goto Seleccion1

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

echo El numero "%choice%" no es valido
pause
goto Seleccion2

:OpcionesG
cls
echo Has seleccionado las Opciones de grupo, que deseas hacer?
pause
:Seleccion3
cls

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





:Salir
cls
echo Agur.
exit