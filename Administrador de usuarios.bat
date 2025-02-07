@echo off

Rem Bienvenida
:start
echo Bienvenido, que deseas hacer?
pause
Rem FIN Bienvenida



Rem Menu pricipal
:Seleccion1
cls
echo Menu principal
echo=================================
echo Selecciona una opcion:
echo (1) Opciones de usuarios.
echo (2) Opciones de grupo.
echo (3) Lista de usuarios.
echo (4) Lista de grupos.
echo (0) Salir.
echo==================================


set /p choice=

if 		'%choice%'		== 		'1' 			goto 		Seleccion2
if 		'%choice%' 		== 		'2' 			goto 		Seleccion3
if 		'%choice%' 	 	== 		'3' 			goto		ListaU
if 		'%choice%' 	 	== 		'4' 			goto		ListaG
if 		'%choice%' 		== 		'0'				goto 		Salir

echo Tu seleccion ("%choice%") no es valida
pause
goto Seleccion1
Rem Fin Menu Principal

Rem Menu de Usuarios

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

if 		'%choice%' 		== 		'1' 			goto 		AgregarU
if 		'%choice%' 		== 		'2' 			goto 		EliminarU
if 		'%choice%' 		== 		'3' 			goto 		AgregarUG
if 		'%choice%' 		== 		'4' 			goto 		EliminarUG
if 		'%choice%' 		== 		'0' 			goto 		Seleccion1

echo Tu seleccion ("%choice%") no es valida
pause
goto Seleccion2
Rem Fin Menu de Usuarios

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

if 		'%choice%'	 	== 		'1' 			goto 		AgregarG
if 		'%choice%'	 	== 		'2' 			goto 		EliminarG
if 		'%choice%'	 	== 		'3' 			goto 		AgregarUG
if 		'%choice%' 	 	== 		'4' 			goto 		EliminarUG
if 		'%choice%' 	 	== 		'0' 			goto 		Seleccion1

echo Tu seleccion ("%choice%") no es valida
pause
goto Seleccion3
Rem Fin Menu de grupos

Rem Agregar usuario
:AgregarU
cls
echo Introduce el nombre del usuario que quieras crear

set /p usuario=
:PreguntaU
cls
echo Se va a crear el usuario "%usuario%", quieres continuar? (s=Si/n=No/c=Cancelar)
set /p choice=
if 		'%choice%'		== 		'S'				goto		AgregandoU
if 		'%choice%' 		== 		's'				goto		AgregandoU
if 		'%choice%'	 	== 		'Si'			goto		AgregandoU
if 		'%choice%' 		== 		'si'			goto		AgregandoU
if 		'%choice%' 		== 		'n'    			goto 		AgregarU
if 		'%choice%' 		== 		'no'   			goto 		AgregarU
if 		'%choice%' 		== 		'N'    			goto 		AgregarU
if 		'%choice%' 		== 		'No'   			goto 		AgregarU
if 		'%choice%' 		== 		'c'				goto		Seleccion2
if 		'%choice%' 		== 		'cancelar'		goto		Seleccion2
if 		'%choice%' 		== 		'C'				goto		Seleccion2
if 		'%choice%' 		== 		'Cancelar'		goto		Seleccion2

echo Tu seleccion ("%choice%") no es valida
pause  
goto PreguntaU

:AgregandoU
cls
echo Creando usuario "%usuario%"...
REM echo=================================
net user %usuario% /add *
REM echo=================================
cls
echo Se ha creado el usuario "%usuario%" correctamente.
pause

:PreguntaU2
cls
echo Quieres crear otro usuario? (s=Si)/(n=No)
set /p choice=
if      '%choice%'	 	== 		'S'        goto       AgregarU 
if      '%choice%'	 	== 		's'        goto       AgregarU 
if      '%choice%'	 	== 		'Si'       goto       AgregarU 
if      '%choice%'	 	== 		'si'       goto       AgregarU
if      '%choice%'	 	== 		'n'        goto       Seleccion2
if      '%choice%'	 	== 		'no'       goto       Seleccion2
if      '%choice%'	 	== 		'N'        goto       Seleccion2
if      '%choice%'	 	== 		'No'       goto       Seleccion2
echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaU2

Rem FIN Agregar usuario

Rem Eliminar usuario
:EliminarU
cls
echo Introduce el nombre del usuario que quieras eliminar

set /p usuario=
:PreguntaEU
cls
echo Se va a eliminar el usuario "%usuario%", quieres continuar? (s=Si/n=No/c=Cancelar)
set /p choice=
if      '%choice%' == 'S'    	    goto    EliminandoU 
if      '%choice%' == 's'    	    goto    EliminandoU 
if      '%choice%' == 'Si'    	    goto    EliminandoU 
if      '%choice%' == 'si'    	    goto    EliminandoU
if      '%choice%' == 'n'    	    goto 	EliminarU
if      '%choice%' == 'no'    	    goto 	EliminarU
if      '%choice%' == 'N'    	    goto 	EliminarU
if      '%choice%' == 'No'    	    goto 	EliminarU
if      '%choice%' == 'c'		    goto	Seleccion2
if      '%choice%' == 'cancelar'	goto	Seleccion2
if      '%choice%' == 'C'		    goto	Seleccion2
if      '%choice%' == 'Cancelar'	goto	Seleccion2

echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaEU

:EliminandoU
echo Eliminando el usuario "%usuario%"...
REM echo=================================
net user %usuario% /delete
REM echo=================================
cls
echo Se ha eliminado el usuario "%usuario%" correctamente.
pause
:preguntaEU2
cls
echo Quieres eliminar otro usuario? (s=Si)/(n=No)
set /p choice=
if      '%choice%' == 'S'        goto    EliminarU 
if      '%choice%' == 's'        goto    EliminarU 
if      '%choice%' == 'Si'       goto    EliminarU 
if      '%choice%' == 'si'       goto    EliminarU 
if      '%choice%' == 'n'        goto    Seleccion2
if      '%choice%' == 'no'       goto    Seleccion2
if      '%choice%' == 'N'        goto    Seleccion2
if      '%choice%' == 'No'       goto    Seleccion2
echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaEU2

Rem Fin Eliminar Usuario

Rem Agregar Grupo
:AgregarG
cls
echo Introduce el nombre del grupo que quieras crear

set /p grupo=
:PreguntaG
cls

echo Se va a crear el grupo "%grupo%", quieres continuar? (s=Si/n=No/c=Cancelar)
set /p choice=
if      '%choice%' == 'S'           goto    AgregandoG 
if      '%choice%' == 's'           goto    AgregandoG 
if      '%choice%' == 'Si'          goto    AgregandoG 
if      '%choice%' == 'si'          goto    AgregandoG
if      '%choice%' == 'n'    	    goto 	AgregarG
if      '%choice%' == 'no'    	    goto 	AgregarG
if      '%choice%' == 'N'    	    goto 	AgregarG
if      '%choice%' == 'No'    	    goto 	AgregarG
if      '%choice%' == 'c'		    goto	Seleccion3
if      '%choice%' == 'cancelar'	goto	Seleccion3
if      '%choice%' == 'C'		    goto	Seleccion3
if      '%choice%' == 'Cancelar'	goto	Seleccion3 
echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaG

:AgregandoG
echo Creando grupo "%grupo%"...
REM echo=================================
net localgroup %grupo% /add
REM echo=================================
cls
echo Se ha creado el grupo "%grupo%" correctamente.
pause
:PreguntaG2
cls
echo Quieres crear otro grupo? (s=Si)/(n=No)
set /p choice=
if      '%choice%' == 'S'           goto    AgregarG 
if      '%choice%' == 's'           goto    AgregarG 
if      '%choice%' == 'Si'          goto    AgregarG 
if      '%choice%' == 'si'          goto    AgregarG
if      '%choice%' == 'n'    	    goto 	Seleccion3
if      '%choice%' == 'no'    	    goto 	Seleccion3
if      '%choice%' == 'N'    	    goto 	Seleccion3
if      '%choice%' == 'No'    	    goto 	Seleccion3
echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaG2
Rem FIN Agregar grupo



Rem Eliminar grupo
:EliminarG
cls
echo Introduce el nombre grupo que quieras eliminar

set /p grupo=
cls
echo Se va a eliminar el grupo "%grupo%", quieres continuar? (s=Si/n=No/c=Cancelar)
set /p choice=
if 		'%choice%' 		== 		'S'				goto		EliminandoG 
if 		'%choice%' 		== 		's'				goto		EliminandoG 
if 		'%choice%' 		== 		'Si'			goto		EliminandoG 
if 		'%choice%' 		== 		'si'			goto		EliminandoG 
goto EliminarG

:EliminandoG
echo Eliminando grupo "%grupo%"...
REM echo=================================
net localgroup %grupo% /delete
REM echo=================================
cls
echo Se ha eliminado el grupo "%grupo%" correctamente.
pause
cls
echo Quieres eliminar otro grupo? (s=Si)/(n=No)
set /p choice=
if      '%choice%' == 'S'	goto	EliminarG 
if      '%choice%' == 's'	goto	EliminarG 
if      '%choice%' == 'Si'	goto	EliminarG 
if      '%choice%' == 'si'	goto	EliminarG
goto Seleccion1
Rem FIN Eliminar usuario


Rem Agregar usuario a grupo
:AgregarUG
cls
echo Que usuario quieres agregar? A que grupo?
set /p usuario=Usuario: 
set /p grupo=Grupo: 

:PreguntaAUG
cls
echo Quieres agregar a "%usuario%" al grupo "%grupo%"? (s=Si/n=No/c=Cancelar)
set /p choice=
if      '%choice%' == 'S'           goto    AgregandoUG 
if      '%choice%' == 's'           goto    AgregandoUG 
if      '%choice%' == 'Si'          goto    AgregandoUG 
if      '%choice%' == 'si'          goto    AgregandoUG
if      '%choice%' == 'n'    	    goto 	AgregarUG
if      '%choice%' == 'no'    	    goto 	AgregarUG
if      '%choice%' == 'N'    	    goto 	AgregarUG
if      '%choice%' == 'No'    	    goto 	AgregarUG
if      '%choice%' == 'c'		    goto	Seleccion1
if      '%choice%' == 'cancelar'	goto	Seleccion1
if      '%choice%' == 'C'		    goto	Seleccion1
if      '%choice%' == 'Cancelar'	goto	Seleccion1 
echo Tu seleccion ("%choice%") no es valida
pause 
goto :PreguntaAUG

:AgregandoUG
echo Agregando el usuario "%usuario%" al grupo "%grupo%"...
REM echo=================================
net localgroup %grupo% %usuario% /add
REM echo=================================
cls
echo Se ha agregado al usuario "%usuario%" al grupo "%grupo%" correctamente.
pause

:PreguntaAUG2
cls
echo Quieres agregar a otro usuario a otro grupo? (s=Si)/(n=No)
set /p choice=
if      '%choice%' == 'S'	        goto	AgregarUG 
if      '%choice%' == 's'	        goto	AgregarUG 
if      '%choice%' == 'Si'	        goto	AgregarUG 
if      '%choice%' == 'si'	        goto	AgregarUG
if      '%choice%' == 'n'    	    goto 	Seleccion1
if      '%choice%' == 'no'    	    goto 	Seleccion1
if      '%choice%' == 'N'    	    goto 	Seleccion1
if      '%choice%' == 'No'    	    goto 	Seleccion1
echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaAUG2


Rem FIN Agregar usuario a grupo

Rem Eliminar usuario de un grupo
:EliminarUG
cls
echo Que usuario de que grupo quieres eliminar?
set /p usuario=Usuario: 
set /p grupo=Grupo: 

:PreguntaEUG
cls
echo Quieres eliminar a "%usuario%" del grupo "%grupo%"? (s=Si/n=No/c=Cancelar)
set /p choice=
if      '%choice%' == 'S'           goto    EliminandoUG 
if      '%choice%' == 's'           goto    EliminandoUG 
if      '%choice%' == 'Si'          goto    EliminandoUG 
if      '%choice%' == 'si'          goto    EliminandoUG
if      '%choice%' == 'n'    	    goto 	EliminarUG
if      '%choice%' == 'no'    	    goto 	EliminarUG
if      '%choice%' == 'N'    	    goto 	EliminarUG
if      '%choice%' == 'No'    	    goto 	EliminarUG
if      '%choice%' == 'c'		    goto	Seleccion1
if      '%choice%' == 'cancelar'	goto	Seleccion1
if      '%choice%' == 'C'		    goto	Seleccion1
if      '%choice%' == 'Cancelar'	goto	Seleccion1 
echo Tu seleccion ("%choice%") no es valida
pause 
goto :PreguntaEUG

:EliminandoUG
echo Eliminando el usuario "%usuario%" del grupo "%grupo%"...
REM echo=================================
net localgroup %grupo% %usuario% /delete
REM echo=================================
cls
echo Se ha eliminando el usuario "%usuario%" del grupo "%grupo%" correctamente.
pause

:PreguntaEUG2
cls
echo Quieres eliminar otro usuario de otro grupo? (s=Si)/(n=No)
set /p choice=
if      '%choice%' == 'S'	        goto	EliminarUG 
if      '%choice%' == 's'	        goto	EliminarUG 
if      '%choice%' == 'Si'	        goto	EliminarUG 
if      '%choice%' == 'si'	        goto	EliminarUG
if      '%choice%' == 'n'    	    goto 	Seleccion1
if      '%choice%' == 'no'    	    goto 	Seleccion1
if      '%choice%' == 'N'    	    goto 	Seleccion1
if      '%choice%' == 'No'    	    goto 	Seleccion1
echo Tu seleccion ("%choice%") no es valida
pause  
goto :PreguntaEUG2

Rem FIN Agregar usuario a grupo



Rem ListaUsuarios
:ListaU
cls
net user
pause
goto Seleccion1
Rem Fin ListaUsuarios



Rem ListaGrupos
:ListaG
cls
net localgroup
pause
goto Seleccion1
Rem Fin ListaGrupos

:Salir
cls
echo Agur.
pause 
exit