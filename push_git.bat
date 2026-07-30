@echo off
echo Iniciando processo de envio para o GitHub...
echo.

:: Inicializa o repositório git caso ainda não seja um
git init

:: Adiciona todos os arquivos
git add .

:: Cria um commit com uma mensagem padrão
git commit -m "Atualizacao de layout e conteudo do site"

:: Garante que a branch principal se chama main
git branch -M main

:: Adiciona o repositorio remoto (o 2>nul esconde o erro caso ja exista)
git remote add origin https://github.com/jp1067107/site-fisioterapeuta-demonstrativo.git 2>nul

:: Envia os arquivos para o GitHub
git push -u origin main

echo.
echo Processo concluido! O site foi enviado para o GitHub.
pause
