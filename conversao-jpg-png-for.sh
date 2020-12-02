#!/bin/bash

CAMINHO_IMAGENS=~/Documentos/SH

for imagem in $@
do
	convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done
