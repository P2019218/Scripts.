#!/bin/bash

echo "Enter the name of the file:"
read file

echo "Enter the exit format (PDF, DOCX or HTML):"
read format

if [ $format == "PDF" ]; then
  pandoc $file -o ${file%.*}.pdf
elif [ $format == "DOCX" ]; then
  pandoc $file -o ${file%.*}.docx
elif [ $format == "HTML" ]; then
  pandoc $file -o ${file%.*}.html
else
  echo "Invalid format. Please try again."
fi
