PROCEDIMENTO PARA EXECUÇÃO

1 - Clone o projeto em um diretorio:
git clone https://github.com/Michael-Junior/mongo2CSV.git

2 - Configure o arquivo bin/Mongo2CSV.sh, exemplo:
#!/bin/bash

cd /home/javaapps/sbt-projects/Mongo2CSV/ || exit

sbt "runMain mongo2csv.Mongo2CSV $1 $2 $3 $4 $5 $6 $7"
ret="$?"

cd - || exit

exit $ret

3 - Execute os comandos para execução indicando -csvDir (Diretório onde será gerado o arquivo .CSV), -database, -collection, -host, -port, exemplo:
./Mongo2CSV.sh -csvDir=/PATH/CSV.CSV, -database=DBTESTE, -collection=COLLTESTE, -host=LOCALHOST, -port=27017
