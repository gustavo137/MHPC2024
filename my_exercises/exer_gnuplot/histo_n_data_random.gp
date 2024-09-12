# Resetea el entorno
reset

# Parámetros para el histograma
set boxwidth 0.5
set grid ytics linestyle 0
set style fill solid 0.20 border

set title "Histogram of random numbers from 1 to 20"
set xlabel "Number"
set ylabel "Total of occurrences"

# Crear un arreglo en Gnuplot para contar las ocurrencias
stats_array = array(20, 0)

# Generar 100 números aleatorios entre 1 y 20 y contarlos
do for [i=1:100] {
    n = int(rand(0) * 20) + 1
    stats_array[n] = stats_array[n] + 1
}

# Graficar el histograma usando datos generados en el mismo script
plot '-' using 1:2:xtic(1) with boxes lc rgb "#0045FF" title "Total of occurrences", \
     '' using 1:($2+0.25):2 with labels title ""

# Pasar los datos generados directamente al plot
do for [i=1:20] {
    print i, stats_array[i]
}
e # indicate the end of the data when we use inline

