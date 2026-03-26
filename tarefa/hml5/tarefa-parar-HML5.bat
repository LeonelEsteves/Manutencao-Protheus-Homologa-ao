REM ---Função: Gerenciar serviços do Protheus no Windows
REM ---Autor: Leonel Diniz 
REM ---Data Criação: novembro 2021
@echo off
chcp 65001
cls

REM ---EXECUTA TAREFA---

echo =============================================== 
echo * Parando todos os serviços, aguarde...
echo =============================================== 

sc \\srvapex177 stop "TOTVSDBAccess64"
taskkill /s srvapex177 /F /FI "SERVICES eq TOTVSDBAccess64" 

sc \\srvapex177 stop "TOTVSDBAccess64TSS"
taskkill /s srvapex177 /F /FI "SERVICES eq TOTVSDBAccess64TSS" 

sc \\srvapex177 stop "TOTVS-Appserver12-APEX-HML5"
taskkill /s srvapex177 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML5" 

sc \\srvapex177 stop "TOTVS-Appserver12-APEX-HML5-SCHED"
taskkill /s srvapex177 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML5-SCHED" 

sc \\srvapex177 stop "TOTVS-Appserver12-APEX-HML5-WF"
taskkill /s srvapex177 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML5-WF" 

sc \\srvapex177 stop "TOTVS-Appserver12-APEX-HML5-WS"
taskkill /s srvapex177 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML5-WS" 

sc \\srvapex177 stop "TOTVS-Appserver12-APEX-HML5-REST"
taskkill /s srvapex177 /F /FI "TOTVS-Appserver12-APEX-HML5-REST" 

sc \\srvapex177 stop "TOTVS-Appserver12-APEX-HML5-WS-TAF"
taskkill /s srvapex177 /F /FI "TOTVS-Appserver12-APEX-HML5-WS-TAF" 

sc \\srvapex177 stop "TSS_Appserver12_HML2"
taskkill /s srvapex177 /F /FI "TSS_Appserver12_HML2" 

cls

echo =============================================== 
echo * Todos os serviços foram parados!!!
echo =============================================== 

pause

start goHML5.bat
exit