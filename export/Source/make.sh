#!/usr/bin/env bash

readonly main="PEARC24-110"

readonly   LC=pdflatex
readonly   BC=bibtex

$LC $main
$BC $main
$LC $main
$LC $main
printf "\n\ncleaning up: \n"
rm -v $main.aux
rm -v $main.log
rm -v $main.out
rm -v $main.blg
rm -v $main.bbl
rm -v comment.cut
printf "\n\nmoving pdf: \n"
mv -v $main.pdf ../pdf/

