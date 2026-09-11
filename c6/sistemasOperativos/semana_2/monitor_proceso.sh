#!/usr/bin/env zsh
for i in {1..6} 
do 
  echo "===== Registro $i =====" >> reporte_procesos.txt 
  date >> reporte_procesos.txt 
  ps aux --sort=-%cpu | head -6 >> reporte_procesos.txt 
  echo "" >> reporte_procesos.txt 
  sleep 5 
done 
