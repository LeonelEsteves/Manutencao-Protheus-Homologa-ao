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

sc \\srvapex068 stop "TOTVSDBAccess64"
taskkill /s srvapex068 /F /FI "SERVICES eq TOTVSDBAccess64" 

sc \\srvapex068 stop "TOTVSDBAccess64TSS"
taskkill /s srvapex068 /F /FI "SERVICES eq TOTVSDBAccess64TSS" 

sc \\srvapex068 stop "TOTVS-Appserver12-APEX-HML1"
taskkill /s srvapex068 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML1" 

sc \\srvapex068 stop "TOTVS-Appserver12-APEX-HML1-SCHED"
taskkill /s srvapex068 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML1-SCHED" 

sc \\srvapex068 stop "TOTVS-Appserver12-APEX-HML1-WF"
taskkill /s srvapex068 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML1-WF" 

sc \\srvapex068 stop "TOTVS-Appserver12-APEX-HML1-WS"
taskkill /s srvapex068 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML1-WS" 

sc \\srvapex068 stop "TOTVS-Appserver12-APEX-HML1-REST"
taskkill /s srvapex068 /F /FI "TOTVS-Appserver12-APEX-HML1-REST" 

sc \\srvapex068 stop "TOTVS-Appserver12-APEX-HML1-WS-TAF"
taskkill /s srvapex068 /F /FI "TOTVS-Appserver12-APEX-HML1-WS-TAF" 

sc \\srvapex068 stop "TOTVS-Appserver12-APEX-HML1-WS2"
taskkill /s srvapex068 /F /FI "TOTVS-Appserver12-APEX-HML1-WS2" 

sc \\srvapex068 stop "TOTVS-Appserver12-P2410-HML1-BROKER"
taskkill /s srvapex068 /F /FI "TOTVS-Appserver12-P2410-HML1-BROKER" 

sc \\srvapex068 stop "TOTVS-Appserver12-P2410-HML1-BROKER_REST"
taskkill /s srvapex068 /F /FI "TOTVS-Appserver12-P2410-HML1-BROKER_REST" 

sc \\srvapex068 stop "TSS_Appserver12_HML2"
taskkill /s srvapex068 /F /FI "TSS_Appserver12_HML2" 

cls

echo =============================================== 
echo * Todos os serviços foram parados!!!
echo =============================================== 

pause

start goHML1.bat
exit