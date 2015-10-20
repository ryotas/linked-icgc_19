#!/bin/sh
cd ./input/$1

for f in *.tsv;
do
  #cat $f | sed -e "s/\t\t/\t\\\N/g" | sed -e "s/\t\t/\t\\\N/g" | sed -e "s/\\\N\([^\t]\)/\\\N\t\1/g" > mod_$f
  cat $f | sed -e "s/\t/\t\\\N/g" | sed -e "s/\\\N\([^\t]\)/\1/g" > mod_$f
done

cd ../
