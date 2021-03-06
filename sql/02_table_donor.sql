SELECT '-- creating donor' AS '';
DROP TABLE IF EXISTS donor;
CREATE TABLE `donor` (
  `icgc_donor_id` varchar(64) DEFAULT NULL,
  `project_code` varchar(64) DEFAULT NULL,
  `study_donor_involved_in` varchar(64) DEFAULT NULL,
  `submitted_donor_id` varchar(64) DEFAULT NULL,
  `donor_sex` varchar(64) DEFAULT NULL,
  `donor_vital_status` varchar(64) DEFAULT NULL,
  `disease_status_last_followup` varchar(64) DEFAULT NULL,
  `donor_relapse_type` varchar(64) DEFAULT NULL,
  `donor_age_at_diagnosis` int(3) DEFAULT NULL,
  `donor_age_at_enrollment` int(3) DEFAULT NULL,
  `donor_age_at_last_followup` int(3) DEFAULT NULL,
  `donor_relapse_interval` int(5) DEFAULT NULL,
  `donor_diagnosis_icd10` varchar(64) DEFAULT NULL,
  `donor_tumour_staging_system_at_diagnosis` varchar(64) DEFAULT NULL,
  `donor_tumour_stage_at_diagnosis` varchar(64) DEFAULT NULL,
  `donor_tumour_stage_at_diagnosis_supplemental` varchar(64) DEFAULT NULL,
  `donor_survival_time` int(5) DEFAULT NULL,
  `donor_interval_of_last_followup` int(5) DEFAULT NULL,
  `prior_malignancy` varchar(64) DEFAULT NULL,
  `cancer_type_prior_malignancy` varchar(64) DEFAULT NULL,
  `cancer_history_first_degree_relative` varchar(64) DEFAULT NULL
);
