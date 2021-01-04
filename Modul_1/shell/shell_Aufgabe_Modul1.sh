 #!/bin/bash 

grep -Ei '[[:digit:]]' 2020-12-04-Article_list_dirty.tsv | sed -n s/IMPORTANT//gp | cut -f 7,14 > 2020-12-04-ISSNs_and_Dates.tsv
# Zieht die richtigen Werte aus den Spalten mit dem "Important" am Anfang - das sind die mit den verschobenen Spalten

 grep -E '[[:digit:]]' 2020-12-04-Article_list_dirty.tsv | sed '/IMPORTANT/d' | cut -f 5,12 |  sed 's/ISSN://; s/issn://; s/Issn://; s/^ //; s/^ //g' >> 2020-12-04-ISSNs_and_Dates.tsv
# nimmt die restlichen Spalten, schneidet sie aus, bereinigt die ISSNs und Leerzeichen und fügt es an Date an.

cat 2020-12-04-ISSNs_and_Dates.tsv | sort | uniq > 2020-12-04-ISSNs_and_Dates_uniq.tsv
#falls wie in Beispieldatei nur die Einzelwerte relevant sind, dann so


