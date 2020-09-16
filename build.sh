#!/bin/sh
sed 's/CONTENT/value/g' index.ms | soelim | ghighlight.pl | groff -ms -T pdf > dist/dsofm.pdf