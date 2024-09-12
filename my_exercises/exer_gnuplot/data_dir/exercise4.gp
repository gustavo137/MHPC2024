
### animated matrix data
reset session

###########
### create some random data
#set print $Data
#    do for [n=1:20] {
#        do for [y=1:15] {
#            Line = ''
#            do for [x=1:15] {
#                Line=Line.sprintf("% 3g",int(rand(0)*2)*2-1)
#            }
#            print Line
#        }
#    }
#set print
############
set print $Data
set terminal gif animate delay 30
set output "Execercise4.gif"
unset key 
N=15

do for [i=1:20] {
    plot $Data u 1:(int($2)%N):3 matrix every :::N*(i-1)::N*i-1 with image 
}
set output
### end of code
