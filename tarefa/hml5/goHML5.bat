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
echo ← voltar       MENU HML5            
echo ===============================================       
echo.
echo ► 1. Parar todos os serviços
echo ===============================================
echo ► 2. Iniciar serviços essenciais
echo ===============================================
echo ► 3. Voltar ao menu inicial
echo ===============================================
echo ► 0. Sair 		

echo.

set /p opcao= Escolha uma opção: 

if %opcao% equ 1 goto :paraTudo
if %opcao% equ 2 goto :iniciaEssencial
if %opcao% equ 3 goto menuHomologacao

if %opcao% equ 0 goto opcao0
if %opcao% GEQ 6 goto erro

REM ---ENTRADA TAREFA---
:paraTudo
cd tarefa/
start tarefa-parar-HML5.bat
exit

:iniciaEssencial
cd tarefa/
start tarefa-iniciar-HML5.bat
exit

REM ---SAÍDA DO MENU---
:menuHomologacao
cd ..\..

start menu-homologacao.bat
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
