.defcolor codegray rgb #cdcdcd
.defcolor white rgb #ffffff
.defcolor black rgb #000000
.ds FAM Hack
.fam Hack
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
.fam H
.RS
..
.de SOURCESTOP
.RE
.fcolor white
.fam T
..
