#!/bin/bash

# 1. Entrar no app
echo "Iniciando o aplicativo..."
adb shell monkey -p com.oak.cryptosense -c android.intent.category.LAUNCHER 1
sleep 5

# 2. Extrair XML da UI
echo "Extraindo XML da interface..."
adb shell uiautomator dump /sdcard/ui.xml
adb pull /sdcard/ui.xml .
echo "XML extraído e salvo como ui.xml"

# 3. Identificar elementos e clicar neles
# Aqui, você precisará analisar o arquivo ui.xml para identificar os bounds ou resource-ids dos elementos que quer interagir.
# Exemplo de interação: clique em um ponto específico na tela usando as coordenadas de bounds extraídas do XML
# Suponha que você tenha identificado um botão com bounds [x1,y1][x2,y2]
# Exemplo de coordenadas: 300 500
adb shell input tap 300 500
echo "Elemento clicado em (300, 500)"
sleep 2

# 4. Repetir ações conforme necessário, adicionando pausas com `sleep` e mais interações.

# 5. Gerar logs
# Exemplo: capturar logs do logcat ou gerar logs personalizados
adb logcat -d > log.txt
echo "Log gerado em log.txt"
