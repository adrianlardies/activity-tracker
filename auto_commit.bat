@echo off

REM Directorio del repositorio
cd /d C:\Users\usr\Documents\GitHub\activity-tracker

REM Crear o actualizar un archivo con la fecha y hora actual
echo Última actualización: %date% %time% > commit.txt

REM Añadir los cambios al área de preparación
git add .

REM Hacer un commit con un mensaje automático
git commit -m "Actualización automática: %date% %time%"

REM Enviar los cambios al repositorio remoto
git push origin main_