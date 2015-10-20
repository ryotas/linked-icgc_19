SELECT '-- loading donor' AS '';
SELECT COUNT(*) FROM donor;
LOAD DATA LOCAL INFILE "./mod_donor.tsv" INTO TABLE donor IGNORE 1 LINES;
SELECT COUNT(*) FROM donor;
ALTER TABLE donor ADD PRIMARY KEY (icgc_donor_id);
ALTER TABLE donor ADD FOREIGN KEY (project_code) REFERENCES project (project_code);
