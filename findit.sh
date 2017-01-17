#/bin/bash

dir=$1

file=junk.fits

cd $dir

for i in *.*
do

  if [[ $i == $file ]]; then
    echo $file is in $dir
  fi

done

cd ../
