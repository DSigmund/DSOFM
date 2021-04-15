.defcolor codegray rgb #cdcdcd
.defcolor white rgb #ffffff
.ds FAM OpenSans
.ds FAMCODE Inconsolata
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
.famcode
..
.de SOURCESTOP
.fcolor white
.fam
..