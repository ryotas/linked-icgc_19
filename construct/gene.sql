PREFIX icgc: <http://icgc.link/vocab/>
PREFIX dcterms: <http://purl.org/dc/terms/>
CONSTRUCT {
  ?uri_icgc dcterms:identifier ?postfix .
  ?uri_icgc owl:sameAs ?uri_uniprot .
  ?uri_icgc owl:sameAs ?uri_bio2rdf .
}
WHERE {
  ?s icgc:gene_affected ?uri_icgc .
  FILTER(!(?postfix=""))
  BIND (REPLACE(str(?uri_icgc), "^.*Gene/", "") AS ?postfix)
  BIND (IRI(CONCAT("http://purl.uniprot.org/ensembl/",?postfix)) as ?uri_uniprot)
  BIND (IRI(CONCAT("http://bio2rdf.org/ensembl:",?postfix)) as ?uri_bio2rdf)
}
