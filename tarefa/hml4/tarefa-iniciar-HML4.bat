REM ---Função: Gerenciar serviços do Protheus no Windows
REM ---Autor: Leonel Diniz 
REM ---Data Criação: novembro 2021
@echo off
chcp 65001
cls

REM ---EXECUTA TAREFA---

echo ===============================================
echo * Iniciando DBACESS-HML4, aguarde...
echo ===============================================

sc \\srvapex176 start "TOTVSDBAccess64" 

echo ===============================================
echo * Iniciando APPSERVER-HML4, aguarde...
echo ===============================================

sc \\srvapex176 start "TOTVS-Appserver12-APEX-HML4" 
sc \\srvapex176 start "TOTVS-Appserver12-APEX-HML4-REST"
sc \\srvapex176 start "TOTVS-Appserver12-P2410-HML1-BROKER"
sc \\srvapex176 start "TOTVS-Appserver12-P2410-HML1-BROKER_REST"


echo ===============================================
echo * Serviços essenciais iniciados!!!
echo ===============================================

pause
start goHML4.bat
exit

