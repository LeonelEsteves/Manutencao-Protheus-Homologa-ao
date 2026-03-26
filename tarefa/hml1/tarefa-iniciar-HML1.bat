REM ---Função: Gerenciar serviços do Protheus no Windows
REM ---Autor: Leonel Diniz 
REM ---Data Criação: novembro 2021
@echo off
chcp 65001
cls

REM ---EXECUTA TAREFA---

echo ===============================================
echo * Iniciando DBACESS-HML1, aguarde...
echo ===============================================

sc \\srvapex068 start "TOTVSDBAccess64" 

echo ===============================================
echo * Iniciando APPSERVER-HML1, aguarde...
echo ===============================================

sc \\srvapex068 start "TOTVS-Appserver12-APEX-HML1" 
sc \\srvapex068 start "TOTVS-Appserver12-APEX-HML1-REST"
sc \\srvapex068 start "TOTVS-Appserver12-P2410-HML1-BROKER"
sc \\srvapex068 start "TOTVS-Appserver12-P2410-HML1-BROKER_REST"

echo ===============================================
echo * Serviços essenciais iniciados!!!
echo ===============================================

pause
start goHML1.bat
exit

