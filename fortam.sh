#!/bin/bash

for arquivo in *.*
do
  tamanho=$(wc -c <"$arquivo")
  tamanho_minimo=500000
  if [ $tamanho -ge $tamanho_minimo ]; then
    echo $arquivo
  fi
done
