@echo off
cd /d "%~dp0"
where node >nul 2>nul || (echo Node.js nao encontrado. Instale a versao LTS em https://nodejs.org, reinicie o computador e rode de novo. & pause & exit /b 1)
echo Verificando dependencias, aguarde...
call npm install --no-audit --no-fund
echo.
echo Abrindo o site em http://localhost:5173 - deixe esta janela aberta.
call npm run dev -- --open --port 5173
pause
