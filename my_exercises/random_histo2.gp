# Generar números aleatorios y guardarlos en random_data.dat
set print 'random_data.dat'
do for [i=1:100] {
    print int(rand(0) * 20 + 1)
}
unset print

# Usar system() para contar las ocurrencias con awk y guardar el resultado en count_data.dat
system("awk '{count[$1]++} END {for (i=1; i<=20; i++) print i, (count[i] ? count[i] : 0)}' random_data.dat > count_data.dat")

# Hacer un histograma de los datos
reset

set boxwidth 0.5
set grid ytics linestyle 0
set style fill solid 0.20 border

set title "Histogram of random numbers from 1 to 20"
set xlabel "Number"
set ylabel "Total of occurrences"

# Gráfica del histograma con cajas y etiquetas
plot 'count_data.dat' using 1:2:xtic(1) with boxes lc rgb "#0045FF" title "Total of occurrences", \
     'count_data.dat' using 1:($2+0.25):2 with labels title ""


