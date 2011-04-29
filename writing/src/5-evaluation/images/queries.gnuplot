set terminal postscript "Arial" 30;
set size ratio +0.8;

set style line 1 lt 1 lw 3;
set style line 2 lt 2 lw 3;
set style line 3 lt 3 lw 3;
set style line 4 lt 6 lw 3;
set style line 5 lt 1 lw 2;
set style line 6 lt 2 lw 2;
set style line 7 lt 3 lw 2;
set style line 8 lt 6 lw 2;
set pointsize 2.0;

set lmargin 2
set bmargin 2
set rmargin 0
set tmargin 1

set grid
set style data linespoints;
set key right bottom;

set xrange [0.5:6.5];
set xlabel "learning sample (%)";
set xtics nomirror norotate ("3" 1, "6" 2, "12.5" 3, "25" 4, "50" 5, "100" 6);
set output "queries.eps";

################################################################################ Positive queries
set autoscale y;
set ylabel "nb. queries";

set yrange [-8:11];
set ytics nomirror norotate 0,2,10;
set title 'target size = 20';
plot 'aai08-queries.dat' every :::0::0 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::1::1 using 3:4 title "QSM-fringe +" with linespoints ls 2, \
     'aai08-queries.dat' every :::0::0 using 3:5 title "QSM-rpni -" with linespoints ls 3, \
     'aai08-queries.dat' every :::1::1 using 3:5 title "QSM-fringe -" with linespoints ls 4;

set yrange [-70:100];
set ytics nomirror norotate 0,20,100;
set title 'target size = 50';
plot 'aai08-queries.dat' every :::2::2 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::3::3 using 3:4 title "QSM-fringe +" with linespoints ls 2, \
     'aai08-queries.dat' every :::2::2 using 3:5 title "QSM-rpni -" with linespoints ls 3, \
     'aai08-queries.dat' every :::3::3 using 3:5 title "QSM-fringe -" with linespoints ls 4;

set yrange [-300:350];
set ytics nomirror norotate 0,100,400;
set title 'target size = 100';
plot 'aai08-queries.dat' every :::4::4 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::5::5 using 3:4 title "QSM-fringe +" with linespoints ls 2, \
     'aai08-queries.dat' every :::4::4 using 3:5 title "QSM-rpni -" with linespoints ls 3, \
     'aai08-queries.dat' every :::5::5 using 3:5 title "QSM-fringe -" with linespoints ls 4;

set yrange [-1400:2000];
set ytics nomirror norotate 0,400,2000;
set title 'target size = 200';
plot 'aai08-queries.dat' every :::6::6 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::7::7 using 3:4 title "QSM-fringe +" with linespoints ls 2, \
     'aai08-queries.dat' every :::6::6 using 3:5 title "QSM-rpni -" with linespoints ls 3, \
     'aai08-queries.dat' every :::7::7 using 3:5 title "QSM-fringe -" with linespoints ls 4;

################################################################################ Positive queries
set autoscale y;
set ylabel "nb. queries (pos)";

set yrange [-8:11];
set ytics nomirror norotate 0,2,10;
set title 'target size = 20';
plot 'aai08-queries.dat' every :::0::0 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::1::1 using 3:4 title "QSM-fringe +" with linespoints ls 3;

set yrange [-70:100];
set ytics nomirror norotate 0,20,100;
set title 'target size = 50';
plot 'aai08-queries.dat' every :::2::2 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::3::3 using 3:4 title "QSM-fringe +" with linespoints ls 3;

set yrange [-300:350];
set ytics nomirror norotate 0,100,400;
set title 'target size = 100';
plot 'aai08-queries.dat' every :::4::4 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::5::5 using 3:4 title "QSM-fringe +" with linespoints ls 3;

set yrange [-1400:2000];
set ytics nomirror norotate 0,400,2000;
set title 'target size = 200';
plot 'aai08-queries.dat' every :::6::6 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::7::7 using 3:4 title "QSM-fringe +" with linespoints ls 3;

################################################################################ Negative queries
set ylabel "nb. queries (neg)";

set yrange [-8:11];
set ytics nomirror norotate 0,2,10;
set title 'target size = 20';
plot 'aai08-queries.dat' every :::0::0 using 3:5 title "QSM-rpni -" with linespoints ls 1, \
     'aai08-queries.dat' every :::1::1 using 3:5 title "QSM-fringe -" with linespoints ls 3;

set yrange [-70:100];
set ytics nomirror norotate 0,20,100;
set title 'target size = 50';
plot 'aai08-queries.dat' every :::2::2 using 3:5 title "QSM-rpni -" with linespoints ls 1, \
     'aai08-queries.dat' every :::3::3 using 3:5 title "QSM-fringe -" with linespoints ls 3;

set yrange [-300:350];
set ytics nomirror norotate 0,100,400;
set title 'target size = 100';
plot 'aai08-queries.dat' every :::4::4 using 3:5 title "QSM-rpni -" with linespoints ls 1, \
     'aai08-queries.dat' every :::5::5 using 3:5 title "QSM-fringe -" with linespoints ls 3;

set yrange [-1400:2000];
set ytics nomirror norotate 0,400,2000;
set title 'target size = 200';
plot 'aai08-queries.dat' every :::6::6 using 3:5 title "QSM-rpni -" with linespoints ls 1, \
     'aai08-queries.dat' every :::7::7 using 3:5 title "QSM-fringe -" with linespoints ls 3;


