 cat lines.tsv | grep -Po '\d{4}-\d{4}' | uniq      

>> die Liste der ISSNS


cat lines.tsv | awk '/[0-9]{4}/ {print $(NF)}' > data_neu.tsv

>> Liste der Jahre


 sed 's/.*":"//; s/",".*//' 

awk '/[0-9]{4}/ {print $(NF)}' lines.tsv > data_neu3.tsv


cat -n lines.tsv | while read line in lines.tsv ; do 
echo grep -Po '\d{4}-\d{4}' | uniq  &&
awk '/[0-9]{4}/ {print $(NF)}' > data_neu2.tsv; 
done

sed '/./=' lines.tsv | sed '/./N; s/\n/ /'          # schreibt Nummer vor Zeile
sed '/^#/d' lines.tsv                              # entfernt alle Zeilen, die mit # anfangen