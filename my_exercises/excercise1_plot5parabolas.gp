# Define a variable character
TITLE="Exercise1"

# Define a function f: x -> (x-p)**2
f(x,p) = (x-p)**2

# Graph Option
## Define grid on the graph
set grid
## Define the range of coordinate x
set xrange [-10:10]
set xtics font ", 15"
set ytics font ", 15"
set key font ",15"
## Define legend of x coordinate
set xlabel "x coord."
## Define legend of y coordinate
set ylabel "y coord."
set key spacing 1
set key top right
set title "Family of parabolas" font ",15"


# Plot the function f With Line and title "parabola 1 a 5",
plot f(x,1) w l t "y=(x-1)^2", \
     f(x,2) w l t "y=(x-2)^2", \
     f(x,3) w l t "y=(x-3)^2", \
     f(x,4) w l t "y=(x-4)^2", \
     f(x,5) w l t "y=(x-5)^2" 
## NB: Character \ means continue next line, BUT no space after the character \.

# Save output
## Define the kind of terminal/format I want to use
## Here encapsulated postscript format with color and font Helvetica with police size 15
set terminal postscript enhanced color font "Helvetica,15"
## Define the output file name
set output TITLE.".eps"  # operator . allows to concatenate 2 string
## I replot the actual graph state
replot

