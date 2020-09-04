#!/bin/sh
for f in **/**.ms;  do ghighlight.pl "${f}" > "${f}".pp; done;
groff -ms index.ms -T pdf > dist/dsofm.pdf