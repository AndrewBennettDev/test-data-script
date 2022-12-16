#!/bin/bash

read -p "Enter main directory name: " mainfolder
mkdir $mainfolder
cd $mainfolder
read -p "Enter subdirectory name: " subfolder
read -p "How man subdirectories? " numfolders
read -p "Enter file name: " filename
read -p "How many files per folder? " numfiles
for i in $(seq 1 $numfolders)
do
mkdir ${subfolder}_${i}
cd ${subfolder}_${i}
for j in $(seq 1 $numfiles)
do
touch ${filename}_${j}.docx
done
cd ..
done
