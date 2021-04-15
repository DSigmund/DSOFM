#!/bin/bash
files=($(ls content/))
insert=""
for i in "${files[@]}"
do
	insert+=$(printf ".CHAPTER \"${i}\",")
done
insert=$(echo "$insert" | sed 's/.ms//g')
sed -e "s/%CONTENT%/${insert}/g" index.ms | tr , "\n" | soelim | groff -ms -dpaper=a5 -P-pa5 -T pdf > dist/dsofm_raw.pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=dist/dsofm.pdf assets/dsofm_2020_V2_a5.pdf dist/dsofm_raw.pdf
rm dist/dsofm_raw.pdf
