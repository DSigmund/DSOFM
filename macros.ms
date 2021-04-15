.defcolor codegray rgb #cdcdcd
.defcolor white rgb #ffffff
.defcolor black rgb #000000
.ft OpenSansR
.de CHAPTER
. NH 1
\\$1
. XS
\\$1
. XE
. so content/\\$1.ms
. bp
..
.de SOURCESTART
.fcolor codegray
.gcolor black
.ft HackR
.RS
..
.de SOURCESTOP
.RE
.fcolor white
.ft OpenSansR
..