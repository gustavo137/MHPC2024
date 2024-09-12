set boxwidth 0.7 relative
set style fill solid 1.0 noborder
set xtics ("1","2","3","4","5","6",)
unset key 
plot for [i=1:4] '1000datos.dat' using ($0+(i-1)*41):1 every ::((i-1)*40)::(i*40-1) with boxes lt i
