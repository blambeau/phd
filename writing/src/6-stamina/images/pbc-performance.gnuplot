set terminal postscript "Arial" 25
set output "pbc-performance.eps"
#
set xrange [0.5:4.5]
set xlabel "learning sample (%)"
set xtics nomirror norotate ("12.5" 1, "25" 2, "50" 3, "100" 4)
#
set yrange [0.5:1.0]
set ytics nomirror norotate 0.5,0.1,1.0
# set ylabel "accuracy (harmonic BCR)"
#
set grid
set style data linespoints
set title 'Performance of pbc'
set key right bottom
#
plot "pbc-performance.dat" using 1:3 title '2',\
"pbc-performance.dat" using 1:4 title '5',\
"pbc-performance.dat" using 1:5 title '10',\
"pbc-performance.dat" using 1:6 title '20',\
"pbc-performance.dat" using 1:7 title '50'
