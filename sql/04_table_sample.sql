DROP TABLE IF EXISTS sample;
CREATE TABLE IF NOT EXISTS sample (
  `icgc_sample_id` varchar(64) DEFAULT NULL,
  `project_code` varchar(64) DEFAULT NULL,
  `submitted_sample_id` varchar(64) DEFAULT NULL,
  `icgc_specimen_id` varchar(64) DEFAULT NULL,
  `submitted_specimen_id` varchar(64) DEFAULT NULL,
  `icgc_donor_id` varchar(64) DEFAULT NULL,
  `submitted_donor_id` varchar(64) DEFAULT NULL,
  `analyzed_sample_interval` varchar(64) DEFAULT NULL,
  `percentage_cellularity` varchar(64) DEFAULT NULL,
  `level_of_cellularity` varchar(64) DEFAULT NULL
);
