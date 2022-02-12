# Imagem Base
FROM python:3.6

# Diretório de trabalho
WORKDIR /tess_build

# Copiando script de compilação
COPY . /tess_build

# Dando acesso de execução ao script
RUN chmod +x compile_and_deps.sh

# Rodando o script
RUN ./compile_and_deps.sh



