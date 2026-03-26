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

sc \\srvapex172 stop "TOTVSDBAccess64"
taskkill /s srvapex172 /F /FI "SERVICES eq TOTVSDBAccess64" 

sc \\srvapex172 stop "TOTVSDBAccess64TSS"
taskkill /s srvapex172 /F /FI "SERVICES eq TOTVSDBAccess64TSS" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2"
taskkill /s srvapex172 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML2" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2-NGF"
taskkill /s srvapex172 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML2-NGF" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2-SCHED"
taskkill /s srvapex172 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML2-SCHED" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2-WF"
taskkill /s srvapex172 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML2-WF" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2-WS"
taskkill /s srvapex172 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML2-WS" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2-REST"
taskkill /s srvapex172 /F /FI "TOTVS-Appserver12-APEX-HML2-REST" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2-WS-TAF"
taskkill /s srvapex172 /F /FI "TOTVS-Appserver12-APEX-HML2-WS-TAF" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2-WS2"
taskkill /s srvapex172 /F /FI "TOTVS-Appserver12-APEX-HML2-WS2" 

sc \\srvapex172 stop "TOTVS-Appserver12-APEX-HML2-FIS"
taskkill /s srvapex172 /F /FI "TOTVS-Appserver12-APEX-HML2-FIS" 

sc \\srvapex172 stop "TSS_Appserver12_HML2"
taskkill /s srvapex172 /F /FI "TSS_Appserver12_HML2" 

cls

echo ===============================================
echo * Todos os serviços foram parados!!!
echo ===============================================

pause
start goHML2.bat
exit




