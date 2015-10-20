#/bin/sh!
# This script modify input/projects.tsv, which can be obtained from the original ICGC portal.

cd input/

echo "code	name	primary_site	tumour_type	tumour_subtype	countries" > projects.tsv

cat projects_original.tsv | \
awk 'BEGIN {FS="\t"; OFS="\t"} NR>1 {print $1, $2, $3, "\\N", "\\N", $4}' >> projects.tsv

cd ../
