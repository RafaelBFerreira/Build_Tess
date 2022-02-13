# **Compile Tess-OCR Image**

Projeto de compilação do tesseract a partir da imagem docker [Python 3.6](https://hub.docker.com/layers/python/library/python/3.6/images/sha256-cd3be217ce0a79835197ca54dba2d90ab95b04f3e4443680b85494db2a0b68e2?context=explore) ou qualquer outra imagem python disponivel.

## **Build Image**
Na pasta do arquivo **Dockerfile** executar o seguinte comando:
```cmd
<cmd>docker build -t <image_name> .
```

## **Shell Script**
Para rodar o script é necessário passar dois parametros na chamada:
1. URL do arquivo zip da release que deseja compilar. **Ex:** https://github.com/tesseract-ocr/tesseract/archive/refs/tags/5.0.0.zip 
2. Versão da release no formato 0.0.0. **Ex:** 5.0.0

**Exemplo**
```shell
./compile_and_deps.sh https://github.com/tesseract-ocr/tesseract/archive/refs/tags/5.0.0.zip 5.0.0
```


## **Referências**

 https://github.com/tesseract-ocr/tesseract/releases/tag/5.0.0
 https://github.com/tesseract-ocr/tesseract
 https://medium.com/quantrium-tech/installing-tesseract-4-on-ubuntu-18-04-b6fcd0cbd78f



## **Autor**
Rafael Barbosa Ferreira *<<rafaelb_ferreira@outlook.com>>*
