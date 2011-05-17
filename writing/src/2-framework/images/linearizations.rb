$LOAD_PATH.unshift File.expand_path('/home/blambeau/Work/ucl/thesis/stamina/toolkit/stamina.git.github/lib')
require 'rubygems'
require 'stamina'

sample = Stamina::ADL::parse_sample_file(File.expand_path('../linearizations.adl', __FILE__))
automaton = sample.to_pta
automaton = automaton.minimize
rem = automaton.states.find do |s|
  s.out_adjacent_states == [s]
end
automaton.drop_state(rem)

automaton.depth
automaton.order_states{|s1,s2| s1[:depth] <=> s2[:depth]}

puts automaton.to_dot

