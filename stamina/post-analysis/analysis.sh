#!/usr/bin/env sh
rm -rf analysis/*
dba bulk:export --csv --headers --select problem,state_count,edge_count,alphabet_size,avg_degree,accepting_ratio,depth target_metrics > analysis/target_metrics.csv
dba bulk:export --csv --headers --select algorithm,creation_time,people,mail,first_name,last_name analysis_challengers > analysis/challengers.csv
dba bulk:export --csv --headers  analysis_submissions > analysis/submissions.csv
dba bulk:export --csv --headers  analysis_best_submissions > analysis/best_submissions.csv
dba bulk:export --csv --headers  analysis_by_problem > analysis/by_problem.csv
dba bulk:export --csv --headers  analysis_by_cell > analysis/by_cell.csv



