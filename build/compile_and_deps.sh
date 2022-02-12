#!/bin/bash

# Script de compilação e instalação de dependencias tesseract
# Autor: Rafael Barbosa Ferreira - 11/02/2022-23h20
# Release = https://github.com/tesseract-ocr/tesseract/releases/
# Ref = https://github.com/tesseract-ocr/tesseract
# Ref = https://medium.com/quantrium-tech/installing-tesseract-4-on-ubuntu-18-04-b6fcd0cbd78f


# Install Deps
apt-get update
apt-get install $(cat sys-pkgs.txt) -y

# Download release Tesseract passada como parametro
wget $1

# Deszipando arquivos
unzip $2.zip
cd tesseract-$2

# Compilando tesseract
./autogen.sh
./configure
sudo make install
sudo ldconfig
make training
sudo make training-install

# Criando variaveis de ambiente
export TESSERACT_PATH=/usr/local/bin/tesseract
export TESSERACT_PREFIX=/usr/local/share/tessdata/

# Baixando tessdatas
wget https://github.com/tesseract-ocr/tessdata/blob/master/eng.traineddata -P $TESSERACT_PREFIX
wget https://github.com/tesseract-ocr/tessdata/blob/master/osd.traineddata -P $TESSERACT_PREFIX
wget https://github.com/tesseract-ocr/tessdata/blob/master/por.traineddata -P $TESSERACT_PREFIX

