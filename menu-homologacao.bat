REM ---Função: Gerenciar serviços do Protheus no Windows
REM ---Autor: Leonel Diniz 
REM ---Data Criação: novembro 2021
@echo off
chcp 65001
cls
:menu
title Gerenciador de Serviços
mode con lines=30 cols=59
cls
echo.
echo Computador: %computername%	Usuário: %username%
echo.
echo ===============================================         
echo                MENU INICIAL          avançar ➜
echo ===============================================    
echo.     
echo ► 1. Ambiente HML1 - 068
echo ===============================================
echo ► 2. Ambiente HML2 - 172
echo ===============================================
echo ► 3. Ambiente HML3 - 173
echo ===============================================
echo ► 4. Ambiente HML4 - 176
echo ===============================================
echo ► 5. Ambiente HML5 - 177
echo ===============================================
echo ► 0. Sair 		

echo.

set /p opcao= Escolha uma opção: 

if %opcao% equ 1 goto goHML1
if %opcao% equ 2 goto goHML2
if %opcao% equ 3 goto goHML3
if %opcao% equ 4 goto goHML4
if %opcao% equ 5 goto goHML5

if %opcao% equ 0 goto opcao0
if %opcao% GEQ 6 goto erro

REM ---REDIRECIONA TAREFA AMABIENTE---
:goHML1
cd tarefa/hml1
start goHML1.bat
exit

:goHML2
cd tarefa/hml2
start goHML2.bat
exit

:goHML3
cd tarefa/hml3
start goHML3.bat
exit

:goHML4
cd tarefa/hml4
start goHML4.bat
exit

:goHML5
cd tarefa/hml5
start goHML5.bat
exit

REM ---SAÍDA DO MENU---
:opcao0
cls
exit

:erro
echo ===============================================
echo * Opção Inválida! Escolha outra opção do menu *
echo ===============================================
pause
goto menu
