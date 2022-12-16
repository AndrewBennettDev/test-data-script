#!/bin/bash

read -p "Enter main directory name: " folder
mkdir $folder
cd $folder

read -p "Enter file name: " filename
read -p "How many files per folder? " numfiles

for i in $(seq 1 $numfiles)
  do
  touch ${filename}_${i}.docx
  done

echo Test data created
