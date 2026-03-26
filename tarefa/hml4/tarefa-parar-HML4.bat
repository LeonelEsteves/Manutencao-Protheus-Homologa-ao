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

sc \\srvapex176 stop "TOTVSDBAccess64"
taskkill /s srvapex176 /F /FI "SERVICES eq TOTVSDBAccess64" 

sc \\srvapex176 stop "TOTVSDBAccess64TSS"
taskkill /s srvapex176 /F /FI "SERVICES eq TOTVSDBAccess64TSS" 

sc \\srvapex176 stop "TOTVS-Appserver12-APEX-HML4"
taskkill /s srvapex176 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML4" 

sc \\srvapex176 stop "TOTVS-Appserver12-APEX-HML4-SCHED"
taskkill /s srvapex176 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML4-SCHED" 

sc \\srvapex176 stop "TOTVS-Appserver12-APEX-HML4-WF"
taskkill /s srvapex176 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML4-WF" 

sc \\srvapex176 stop "TOTVS-Appserver12-APEX-HML4-WS"
taskkill /s srvapex176 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML4-WS" 

sc \\srvapex176 stop "TOTVS-Appserver12-APEX-HML4-REST"
taskkill /s srvapex176 /F /FI "TOTVS-Appserver12-APEX-HML4-REST" 

sc \\srvapex176 stop "TOTVS-Appserver12-APEX-HML4-WS-TAF"
taskkill /s srvapex176 /F /FI "TOTVS-Appserver12-APEX-HML4-WS-TAF" 

sc \\srvapex176 stop "TOTVS-Appserver12-APEX-HML4_SVW"
taskkill /s srvapex176 /F /FI "TOTVS-Appserver12-APEX-HML4_SVW" 

sc \\srvapex176 stop "TOTVS-Appserver12-P2410-HML1-BROKER"
taskkill /s srvapex176 /F /FI "TOTVS-Appserver12-P2410-HML1-BROKER" 

sc \\srvapex176 stop "TOTVS-Appserver12-P2410-HML1-BROKER_REST"
taskkill /s srvapex176 /F /FI "TOTVS-Appserver12-P2410-HML1-BROKER_REST" 

sc \\srvapex176 stop "TSS_Appserver12_HML2"
taskkill /s srvapex176 /F /FI "TSS_Appserver12_HML2" 

cls

echo =============================================== 
echo * Todos os serviços foram parados!!!
echo =============================================== 

pause

start goHML4.bat
exit