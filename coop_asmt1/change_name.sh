for file in `ls *.txt`
do
  lines=`cat $file | wc -l`
  if [ $lines == 0 ]
    then
      rm $file
      echo removed $file
  elif [ $lines -lt 10 ] 
    then   
      mv $file short_$file
      echo changed $file to short_$file 
  elif [ $lines -le 20 ]
    then
      mv $file medium_$file
      echo changed $file to medium_$file
  else
    mv $file long_$file
    echo changed $file to long_$file
fi  
done
