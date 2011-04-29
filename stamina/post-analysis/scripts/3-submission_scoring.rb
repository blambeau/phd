require File.expand_path('../0-commons', __FILE__)

def scoring_tuple(scoring)
    update = {
      :true_positive  => scoring.true_positive,
      :false_positive => scoring.false_positive,
      :true_negative  => scoring.true_negative,
      :false_negative => scoring.false_negative,
      :precision      => scoring.precision,
      :recall         => scoring.recall,
      :sensitivity    => scoring.sensitivity,
      :specificity    => scoring.specificity,
      :accuracy       => scoring.accuracy,
      :error_rate     => scoring.error_rate,
      :balanced_classification_rate => scoring.bcr,
      :balanced_error_rate => scoring.balanced_error_rate,
      :f_measure      => scoring.f_measure,
      :harmonic_bcr   => scoring.harmonic_bcr,
      :positive_likelihood => scoring.positive_likelihood,
      :negative_likelihood => scoring.negative_likelihood
    }
    cleaned = {}
    update.each_pair{|k,v| cleaned[k] = (v.to_f.finite? ? v : -2.0)}
    cleaned
end

with_connection do |conn|
  
  sql = <<-EOF
    SELECT S.people, S.algorithm, S.problem, S.submission_time,
           S.score,
           S.binary_sequence as learned, P.binary_sequence as actual
      FROM submissions as S 
      JOIN competition_data as P on S.problem = P.problem
     WHERE score != -1.0
  EOF
  conn.dataset(sql).each do |tuple|
    learned, actual = tuple[:learned], tuple[:actual]
    scoring = Stamina::Scoring.scoring(learned, actual)
    key = tuple.delete_if{|k,v|
      ![:people, :algorithm, :problem, :submission_time].include?(k)
    }
    conn.transaction do |trans|
      trans.update(:submissions, scoring_tuple(scoring), key)
    end
  end

  sql = <<-EOF
    SELECT S.people, S.algorithm, S.problem, 
           S.score,
           S.binary_sequence as learned, P.binary_sequence as actual
      FROM valid_submissions as S 
      JOIN competition_data as P on S.problem = P.problem
     WHERE score != -1.0
  EOF
  conn.dataset(sql).each do |tuple|
    learned, actual = tuple[:learned], tuple[:actual]
    scoring = Stamina::Scoring.scoring(learned, actual)
    key = tuple.delete_if{|k,v| ![:people, :algorithm, :problem].include?(k)}
    conn.transaction do |trans|
      trans.update(:valid_submissions, scoring_tuple(scoring), key)
    end
  end

  conn.transaction do |trans|
    trans.direct_sql "update valid_submissions set score = harmonic_bcr where algorithm='rpni' or algorithm='redblue'"
    trans.direct_sql "update submissions set score = harmonic_bcr where algorithm='rpni' or algorithm='redblue'"
  end

end
