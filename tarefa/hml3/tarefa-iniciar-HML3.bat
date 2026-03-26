REM ---Função: Gerenciar serviços do Protheus no Windows
REM ---Autor: Leonel Diniz 
REM ---Data Criação: novembro 2021
@echo off
chcp 65001
cls

REM ---EXECUTA TAREFA---

echo ===============================================
echo * Iniciando DBACESS-HML3, aguarde...
echo ===============================================

sc \\srvapex173 start "TOTVSDBAccess64" 

echo ===============================================
echo * Iniciando APPSERVER-HML3, aguarde...
echo ===============================================

sc \\srvapex173 start "TOTVS-Appserver12-APEX-HML3" 
sc \\srvapex173 start "TOTVS-Appserver12-APEX-HML3-REST"

echo ===============================================
echo * Serviços essenciais iniciados!!!
echo ===============================================

pause
start goHML3.bat
exit

