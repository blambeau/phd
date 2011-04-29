require File.expand_path('../0-commons', __FILE__)

#
# This file updates the database by filling a new target_metrics table with
# known metrics about target automata. That new table has the following columns
#
#  * problem:         identifier of the problem instance (1..100, primary key)
#  * state_count:     number of states of the target machine
#  * edge_count:      number of edges of the target machine
#  * alphabet_size:   size of the alphabet
#  * avg_degree:      average degree of states
#  * accepting_ratio: ratio of accepting vs. non accepting states 
#  * depth:           automaton depth
#

with_connection do |conn|
  
  # Build the tuples
  tuples = conn.dataset(:competition_data).collect do |tuple|
    puts "Parsing automaton for #{tuple[:problem]}"
    dfa = Stamina::ADL::parse_automaton(tuple[:target_adl])
    {:problem         => tuple[:problem],
     :state_count     => dfa.state_count,
     :edge_count      => dfa.edge_count,
     :avg_degree      => dfa.avg_degree,
     :alphabet_size   => dfa.alphabet_size,
     :accepting_ratio => dfa.accepting_ratio,
     :depth           => dfa.depth}
  end

  # Save them now
  puts "Saving them now"
  conn.transaction do |trans|
    trans.delete(:target_metrics)
    tuples.each do |tuple|
      trans.insert(:target_metrics, tuple)
    end
  end

end # with_connection


