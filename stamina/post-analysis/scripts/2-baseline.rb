require File.expand_path('../0-commons', __FILE__)
require "time"

#
# This file adds a people (stamina@listes.uclouvain.be) and two challengers
# (rpni and redblue) to the database. For each of them, it fills the submissions
# and valid_submissions table with binary sequences obtained by running 
# correponding baseline algorithms.
#
# The 3-submission-scoring.rb script should always be ran after this one to
# ensure that all scoring metrics are correct in the tables.
#

grid = File.expand_path('../../../grid', __FILE__)
with_connection do |conn| 
  conn.transaction do |trans|

    trans.delete(:challengers, {:people => 0})
    trans.delete(:people, {:id => 0})
    trans.insert(:people, {
      :id          => 0,
      :mail        => "stamina@listes.uclouvain.be",
      :password    => "allocine",
      :first_name  => "Organizers",
      :last_name   => "Stamina",
      :nickname    => "stamina",
      :admin_level => 3,
      :authorize_submission_usage => true,
      :creation_time => Time.now
    })

    ["rpni", "redblue"].each do |challenger|
      trans.insert(:challengers, {
        :people        => 0,
        :algorithm     => challenger,
        :creation_time => Time.parse("2010-03-01")
      })
      (1..100).each do |problem|
        submission = File.read(File.join(grid, "baseline", challenger, "#{problem}.bin")).strip
        tuple = {
          :people          => 0,
          :algorithm       => challenger,
          :problem         => problem,
          :score           => -3.0,
          :binary_sequence => submission,
          :submission_time => Time.parse("2010-03-01")
        }
        trans.insert(:submissions, tuple)
        trans.insert(:valid_submissions, tuple)
      end
    end

  end # transaction
end # connection
