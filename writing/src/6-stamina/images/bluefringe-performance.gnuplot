set terminal postscript "Arial" 25
set output "bluefringe-performance.eps"
#
set xrange [0.5:4.5]
set xlabel "Learning sample (%)"
set xtics nomirror norotate ("12.5" 1, "25" 2, "50" 3, "100" 4)
#
set yrange [0.4:1.0]
set ytics nomirror norotate 0.4,0.1,1.0
set ylabel "Harmonic BCR score"
#
set grid
set style data linespoints
# set title 'Performance of Blue-fringe'
set key right bottom
#
plot "bluefringe-performance.dat" using 1:3 title '2'  with linespoints,\
"bluefringe-performance.dat" using 1:4 title '5'  with linespoints,\
"bluefringe-performance.dat" using 1:5 title '10'  with linespoints,\
"bluefringe-performance.dat" using 1:6 title '20'  with linespoints,\
"bluefringe-performance.dat" using 1:7 title '50'  with linespoints
