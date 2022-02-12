# Imagem Base
FROM python:3.6

# Diretório de trabalho
WORKDIR /tess_build

# Copiando script de compilação e sys-pkgs
COPY . /tess_build

# Dando acesso de execução ao script
RUN chmod +x compile_and_deps.sh

# Rodando o script
RUN ./compile_and_deps.sh https://github.com/tesseract-ocr/tesseract/archive/refs/tags/5.0.0.zip 5.0.0



