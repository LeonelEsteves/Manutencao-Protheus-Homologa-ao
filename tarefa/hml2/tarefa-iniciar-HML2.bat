REM ---Função: Gerenciar serviços do Protheus no Windows
REM ---Autor: Leonel Diniz 
REM ---Data Criação: novembro 2021
@echo off
chcp 65001
cls

REM ---EXECUTA TAREFA---

echo ===============================================
echo * Iniciando DBACESS-HML2, aguarde...
echo ===============================================

sc \\srvapex172 start "TOTVSDBAccess64" 

echo ===============================================
echo * Iniciando APPSERVER-HML2, aguarde...
echo ===============================================

sc \\srvapex172 start "TOTVS-Appserver12-APEX-HML2" 
sc \\srvapex172 start "TOTVS-Appserver12-APEX-HML2-REST"

echo ===============================================
echo * Serviços essenciais iniciados!!!
echo ===============================================

pause
start goHML2.bat
exit