#!/bin/bash

cd /home/oliveirmic/Projetos-dev/Mongo2CSV/ || exit

sbt "runMain mongo2csv.Mongo2CSV $1 $2 $3 $4 $5 $6 $7"
ret="$?"

cd - || exit

exit $ret
