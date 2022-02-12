#!/bin/bash

# Script de compilação e instalação de dependencias tesseract-5.0.0
# Autor: Rafael Barbosa Ferreira - 11/02/2022-23h20
# Release = https://github.com/tesseract-ocr/tesseract/releases/tag/5.0.0
# Ref = https://github.com/tesseract-ocr/tesseract
# Ref = https://medium.com/quantrium-tech/installing-tesseract-4-on-ubuntu-18-04-b6fcd0cbd78f


# Install Deps
apt-get update
apt-get install sudo automake pkg-config libsdl-pango-dev libicu-dev libcairo2-dev bc libleptonica-dev -y

# Compile Tesseract 5.0.0
wget https://github.com/tesseract-ocr/tesseract/archive/refs/tags/5.0.0.zip

unzip 5.0.0.zip

cd tesseract-5.0.0

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

