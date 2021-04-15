.defcolor codegray rgb #cdcdcd
.defcolor white rgb #ffffff
.ft OpenSansR
.fam
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
.ft InconsolataB
..
.de SOURCESTOP
.fcolor white
.ft OpenSansR
..