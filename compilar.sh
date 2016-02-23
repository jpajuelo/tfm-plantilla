#!/bin/bash

# Limpiar archivos auxiliares
./limpiar.sh

# Compilar
pdflatex main.tex
bibtex main
makeglossaries main
pdflatex main.tex
pdflatex main.tex
mv main.pdf "Tesis_fin_de_master.pdf"

# Limpiar archivos auxiliares
./limpiar.sh
