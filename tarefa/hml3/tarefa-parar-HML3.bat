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

sc \\srvapex173 stop "TOTVSDBAccess64"
taskkill /s srvapex173 /F /FI "SERVICES eq TOTVSDBAccess64" 

sc \\srvapex173 stop "TOTVSDBAccess64TSS"
taskkill /s srvapex173 /F /FI "SERVICES eq TOTVSDBAccess64TSS" 

sc \\srvapex173 stop "TOTVS-Appserver12-APEX-HML3"
taskkill /s srvapex173 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML3" 

sc \\srvapex173 stop "TOTVS-Appserver12-APEX-HML3-SCHED"
taskkill /s srvapex173 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML3-SCHED" 

sc \\srvapex173 stop "TOTVS-Appserver12-APEX-HML3-WF"
taskkill /s srvapex173 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML3-WF" 

sc \\srvapex173 stop "TOTVS-Appserver12-APEX-HML3-WS"
taskkill /s srvapex173 /F /FI "SERVICES eq TOTVS-Appserver12-APEX-HML3-WS" 

sc \\srvapex173 stop "TOTVS-Appserver12-APEX-HML3-REST"
taskkill /s srvapex173 /F /FI "TOTVS-Appserver12-APEX-HML3-REST" 

sc \\srvapex173 stop "TOTVS-Appserver12-APEX-HML3-WS2"
taskkill /s srvapex173 /F /FI "TOTVS-Appserver12-APEX-HML3-WS2" 

sc \\srvapex173 stop "TSS_Appserver12_HML2"
taskkill /s srvapex173 /F /FI "TSS_Appserver12_HML2" 

cls

echo =============================================== 
echo * Todos os serviços foram parados!!!
echo =============================================== 

pause

start goHML3.bat
exit