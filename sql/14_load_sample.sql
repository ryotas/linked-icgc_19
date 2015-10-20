SELECT '-- loading sample' AS '';
SELECT COUNT(*) FROM sample;
LOAD DATA LOCAL INFILE "./mod_sample.tsv" INTO TABLE sample IGNORE 1 LINES;
SELECT COUNT(*) FROM sample;
ALTER TABLE sample ADD PRIMARY KEY (icgc_sample_id);
ALTER TABLE sample ADD FOREIGN KEY (project_code) REFERENCES project (project_code);
ALTER TABLE sample ADD FOREIGN KEY (icgc_donor_id) REFERENCES donor (icgc_donor_id);
ALTER TABLE sample ADD FOREIGN KEY (icgc_specimen_id) REFERENCES specimen (icgc_specimen_id);
