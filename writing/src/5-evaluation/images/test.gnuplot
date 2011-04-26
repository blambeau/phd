set terminal postscript "Arial" 30;
set size ratio +0.8;
set key right bottom;
set output "test.eps";
set style line 1 lt 1 lw 3 
set style line 2 lt 2 lw 3 
set style line 3 lt 3 lw 3 
set style line 4 lt 6 lw 3
set xrange [-pi:pi]
plot sin(  x) w l ls 1, sin(2*x) w l ls 2, \
     sin(3*x) w l ls 3, sin(4*x) w l ls 4;
