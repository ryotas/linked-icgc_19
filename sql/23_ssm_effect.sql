SELECT '-- ssm_effect' AS '';
DROP TABLE IF EXISTS ssm_effect;
CREATE TABLE ssm_effect (
SELECT DISTINCT
  icgc_mutation_id
, consequence_type
, aa_mutation
, cds_mutation
, gene_affected
, transcript_affected
, gene_build_version
FROM ssm
);
SELECT COUNT(*) FROM ssm_effect;
ALTER TABLE ssm_effect ADD PRIMARY KEY (icgc_mutation_id, transcript_affected);
ALTER TABLE ssm_effect ADD FOREIGN KEY (icgc_mutation_id) REFERENCES ssm_mutation (icgc_mutation_id);
