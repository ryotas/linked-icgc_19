SELECT '-- ssm_detection' AS '';
DROP TABLE IF EXISTS ssm_detection;
CREATE TABLE ssm_detection (
SELECT DISTINCT
  icgc_mutation_id
, icgc_donor_id
, project_code
, icgc_specimen_id
, icgc_sample_id
, matched_icgc_sample_id
, submitted_sample_id
, submitted_matched_sample_id
--
, quality_score
, probability
, total_read_count
, mutant_allele_read_count
, verification_status
, verification_platform
, biological_validation_status
, biological_validation_platform
--
, platform
, experimental_protocol
, sequencing_strategy
, base_calling_algorithm
, alignment_algorithm
, variation_calling_algorithm
, other_analysis_algorithm
, seq_coverage
, raw_data_repository
, raw_data_accession
, initial_data_release_date
FROM ssm
);
SELECT COUNT(*) FROM ssm_detection;
ALTER TABLE ssm_detection ADD PRIMARY KEY (icgc_donor_id, icgc_specimen_id, icgc_sample_id, icgc_mutation_id);
ALTER TABLE ssm_detection ADD FOREIGN KEY (icgc_donor_id) REFERENCES donor (icgc_donor_id);
ALTER TABLE ssm_detection ADD FOREIGN KEY (icgc_specimen_id) REFERENCES specimen (icgc_specimen_id);
ALTER TABLE ssm_detection ADD FOREIGN KEY (icgc_mutation_id) REFERENCES ssm_mutation (icgc_mutation_id);
ALTER TABLE ssm_detection ADD FOREIGN KEY (project_code) REFERENCES project (project_code);
ALTER TABLE ssm_detection ADD FOREIGN KEY (icgc_sample_id) REFERENCES sample (icgc_sample_id);
