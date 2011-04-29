require File.expand_path('../0-commons', __FILE__)
require 'wlang'

# Generates the accuracy graph of a specific algorithm
def generate_graph(conn, chal)
  algo = chal[:algorithm]

  # Make the output folder
  output = File.expand_path("../../feedback/#{algo}", __FILE__)
  FileUtils.rm_rf   output
  FileUtils.mkdir_p output

  # Output the .csv file
  File.open(File.join(output, "#{algo}.csv"), 'w') do |csv|
    data = conn.dataset(:analysis_by_problem, {:algorithm => algo})
    data.to_csv(csv, {:headers => true})
  end

  # Output the .gnuplot file
  min = ((conn.dataset(:analysis_regroupby_cell, {:algorithm => algo}).min(:score_avg) * 10).to_i.to_f / 10)
  min = 0.5 if min > 0.5
  title = (algo == 'redblue' ? "Performance of #{algo} (baseline)" : "Performance of #{algo}")
  File.open(File.join(output, "#{algo}.gnuplot"), 'w') do |gp|
    gp << <<-EOF.gsub(/^\s+\|\s*/, '')
    | set terminal gif
    | set output "#{algo}.gif"
    | #
    | set xrange [0.5:4.5]
    | set xlabel "learning sample (%)"
    | set xtics nomirror norotate ("12.5" 1, "25" 2, "50" 3, "100" 4)
    | #
    | set yrange [#{min}:1.0]
    | set ytics nomirror norotate #{min},0.05,1.0
    | set ylabel "accuracy (harmonic BCR)"
    | #
    | set grid
    | set style data linespoints
    | set title '#{title}'
    | set key right bottom
    | #
    | plot "#{algo}.dat" using 1:3 title '2',\\
    |      "#{algo}.dat" using 1:4 title '5',\\
    |      "#{algo}.dat" using 1:5 title '10',\\
    |      "#{algo}.dat" using 1:6 title '20',\\
    |      "#{algo}.dat" using 1:7 title '50'
    EOF
  end

  # Output the .dat file
  sparsities = [0.125, 0.25, 0.5, 1.0]
  alphindex = {2 => 0, 5 => 1, 10 => 2, 20 => 3, 50 => 4}
  data = Hash.new{|h,k| h[k] = Array.new(5,-2.0)}
  conn.dataset(:analysis_regroupby_cell, {:algorithm => algo}).each do |tuple|
    data[tuple[:sample_sparsity]][alphindex[tuple[:alphabet_size]]] = tuple[:score_avg]
  end
  sparsities.each do |spar|
    (0..4).each{|i| data[spar][i] = '?' if data[spar][i] == -2.0}
  end
  File.open(File.join(output, "#{algo}.dat"), "w") do |datfile|
    sparsities.each_with_index do |spar,idx|
      datfile << "#{idx+1} #{spar} "   << data[spar].join(" ") << "\n"
    end
  end

  # Generate the graph with gnuplot
  `cd #{File.join(output)} && gnuplot #{File.join(output, "#{algo}.gnuplot")}`

  # Generate the mail info
  File.open(File.join(output, "mail.txt"), "w") do |mail|
    tpl = File.expand_path('../../feedback/mail.txt', __FILE__)
    mail << WLang::file_instantiate(tpl, chal, "wlang/active-string")
  end
end

with_connection do |conn|
  conn.dataset(:analysis_challengers).each do |chal|
    generate_graph(conn, chal)
  end
end
