SELECT '-- loading specimen' AS '';
SELECT COUNT(*) FROM specimen;
LOAD DATA LOCAL INFILE "./mod_specimen.tsv" INTO TABLE specimen IGNORE 1 LINES;
SELECT COUNT(*) FROM specimen;
ALTER TABLE specimen ADD PRIMARY KEY (icgc_specimen_id);
ALTER TABLE specimen ADD FOREIGN KEY (project_code) REFERENCES project (project_code);
