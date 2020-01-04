#!/bin/bash

for i in `find static/galleries/animals -type f ! -name "*-thumb.jpeg" -name "*.jpeg"`;
  do echo $i; 
  if [ -f ${i%.*}-thumb.jpeg ]; 
    then continue; 
  fi; 
  convert $i -thumbnail 200x200 ${i%.*}-thumb.jpeg; 
done