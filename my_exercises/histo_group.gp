#
# Histo in 2 groups
#
reset

barplot = 'data_histo.dat'

set boxwidth 0.5
set grid ytics linestyle 0
set style fill solid 0.20 border 

set style data histograms
set style histogram clustered

#set terminal svg size 1200,800
set xlabel "Year"
set ylabel "Number of Books"

plot newhistogram "Group 1", barplot using 2:xtic(1) title "Borrowed", '' using 3 title "Bought", \
     newhistogram "Group 2", barplot using 4:xtic(1) title "Sold"

