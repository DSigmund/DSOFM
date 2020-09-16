#!/bin/bash
files=($(ls content/))
insert=""
for i in "${files[@]}"
do
	insert+=$(printf ".CHAPTER \"${i}\",")
done
insert=$(echo "$insert" | sed 's/.ms//g')
sed -e "s/%CONTENT%/${insert}/g" index.ms | tr , "\n" | soelim | ghighlight.pl | groff -ms -T pdf > dist/dsofm.pdf