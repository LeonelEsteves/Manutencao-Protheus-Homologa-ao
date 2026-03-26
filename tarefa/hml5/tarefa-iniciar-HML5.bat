REM ---Função: Gerenciar serviços do Protheus no Windows
REM ---Autor: Leonel Diniz 
REM ---Data Criação: novembro 2021
@echo off
chcp 65001
cls

REM ---EXECUTA TAREFA---

echo ===============================================
echo * Iniciando DBACESS-HML5, aguarde...
echo ===============================================

sc \\srvapex177 start "TOTVSDBAccess64" 

echo ===============================================
echo * Iniciando APPSERVER-HML5, aguarde...
echo ===============================================

sc \\srvapex177 start "TOTVS-Appserver12-APEX-HML5" 
sc \\srvapex177 start "TOTVS-Appserver12-APEX-HML5-REST"

echo ===============================================
echo * Serviços essenciais iniciados!!!
echo ===============================================

pause
start goHML5.bat
exit

