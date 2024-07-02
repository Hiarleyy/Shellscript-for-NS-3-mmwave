#!/bin/bash

# Caminho para o diretório scratch
DIRETORIO="/ns3-mmwave/scratch"

# Nome do arquivo
ARQUIVO="Packet_5G.cc"

# Caminho completo do arquivo
CAMINHO_COMPLETO="$DIRETORIO/$ARQUIVO"

# Verifica se o arquivo existe
if [ -e "$CAMINHO_COMPLETO" ]; then
  # Apaga o arquivo
  rm "$CAMINHO_COMPLETO"
  echo "Arquivo $CAMINHO_COMPLETO apagado."
else
  echo "Arquivo $CAMINHO_COMPLETO não existe."
fi

# Cria um novo arquivo com o mesmo nome no diretório scratch
touch "$CAMINHO_COMPLETO"
echo "Novo arquivo $CAMINHO_COMPLETO criado."
