SELECT '-- loading project' AS '';
SELECT COUNT(*) FROM project;
LOAD DATA LOCAL INFILE "mod_project.tsv" INTO TABLE project IGNORE 1 LINES;
SELECT COUNT(*) FROM project;
ALTER TABLE project ADD PRIMARY KEY (project_code);
