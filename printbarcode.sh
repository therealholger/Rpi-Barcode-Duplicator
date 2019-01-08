while :
do
  read bc 
  zpl1="^XA~SD30^LT18^FO230,4^A0N,50,55^FD"
  zpl2="^FS^BY2,2,50^FO220,55^BCN,50,N,N,N,N^FD"
  zpl3="FS^XZ"
  fullzpl=$zpl1$bc$zpl2$bc$zpl3 #This inserts the variable bc in two places in the script, once for the custom interpretation line and once for the Code 128 barcode.  See the README.md file for details.
  echo $fullzpl
  echo $fullzpl > /tmp/bc.txt
  lp -dZebra -o raw /tmp/bc.txt
done
