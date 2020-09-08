#!/bin/sh
soelim index.ms | ghighlight.pl | groff -ms -T pdf > dist/dsofm.pdf