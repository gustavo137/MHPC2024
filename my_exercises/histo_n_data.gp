#
# Make an histogram
#
reset

set boxwidth 0.5
set grid ytics linestyle 0
set style fill solid 0.20 border 

#set terminal svg size 1200,800 font "Arial,10"

set title "Histogram of random numbers from 1 to 20"
set xlabel "number"
set ylabel "Total of reps"

plot 'data_histo_n.dat' using 1:2:xtic(1) with boxes lc rgb "#0045FF" title "Total of reps", \
     'data_histo_n.dat' using 1:($2+0.25):2 with labels title ""




