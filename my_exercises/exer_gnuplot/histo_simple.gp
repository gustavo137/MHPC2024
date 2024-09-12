#
# Make an histogram
#
reset

set boxwidth 0.5
set grid ytics linestyle 0
set style fill solid 0.20 border 

#set terminal svg size 1200,800 font "Arial,10"

set title "Books Borrowed"
set xlabel "Year"
set ylabel "Number of Books"

plot 'data_histo.dat' using 1:2:xtic(1) with boxes lc rgb "#0045FF" title "These are the books I borrowed", \
     'data_histo.dat' using 1:($2+0.25):2 with labels title ""




