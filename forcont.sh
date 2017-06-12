#!/bin/bash
 DIR='.'


NUMARQ=0
NUMDIR=0
lista(){
for ARQ in $( ls $1/ )
  do
  [ -d "$1/$ARQ" ] && { NUMDIR=$(($NUMDIR+1)); lista $1/$ARQ; }
  [ -f "$1/$ARQ" ] && NUMARQ=$(($NUMARQ+1))
done
}
lista $DIR
echo "Existem $NUMARQ arquivos e $NUMDIR diretorios em '$DIR'."
