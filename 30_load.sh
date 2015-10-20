#!/bin/sh

#echo -e "\n\nRemove and restart database..."
#~/virtuoso.sh stop
#sleep 2
#~/virtuoso.sh remove
#sleep 2
#~/virtuoso.sh start
#sleep 15

date

echo -e "\n\nLoading hgnc..."
time ~/virtuoso.sh loaddir ~/linked-icgc/output hgnc_complete_set.nq http://hoge/
echo -e "\n\nLoading uniprot..."
time ~/virtuoso.sh loaddir ~/linked-icgc/output 9606.ttl http://purl.uniprot.org/ 
echo -e "\n\nLoading reactome..."
time ~/virtuoso.sh loaddir ~/linked-icgc/output Homo_sapiens.owl http://purl.uniprot.org/ 
echo -e "\n\nLoading all ICGC data..."
time ~/virtuoso.sh loaddir ~/linked-icgc/output *.nt http://icgc.link/graph

date

