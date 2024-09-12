
### histogram: occurrences of keywords
reset session

# create some random test data
myKeywords = '1 2 3 4 5 6 7 8 9 10'
set print $Data
    do for [i=1:1000] {
        print word(myKeywords,int(rand(0)*10)+1)
    }
set print

# create a unique list of strings from a column
addToList(list,col) = list.( strstrt(list,'"'.strcol(col).'"') > 0 ? '' : ' "'.strcol(col).'"')
Uniques = ''
stats $Data u (Uniques=addToList(Uniques,1),'') nooutput

N = words(Uniques)
Lookup(s) = (sum [_i=1:N] (s eq word(Uniques,_i) ? _idx=_i : 0), _idx)

set xrange [1:N]
set xtics out
set ylabel "Counts"
set grid x,y
set offsets 0.5,0.5,0.5,0
set boxwidth 0.8

set style fill transparent solid 0.5 border
set key noautotitle

plot $Data u (Lookup(strcol(1))):(1):xtic(1) smooth freq w boxes
### end of script
