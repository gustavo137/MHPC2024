# Define a variable character
TITLE="My_Example"

# Define a function f: x -> sin(x)
f(x) = sin(x)

# Graph Option
## Define grid on the graph
set grid
## Define the range of coordinate x
set xrange [-pi:pi]
## Define legend of x coordinate
set xlabel "X coord."
## Define legend of y coordinate
set ylabel "Trigonometric Functions"

# Plot the function f With Line and title "sinus",
# plot also function cosinus With Line and title "cosinus"
plot f(x) w l title "sinus", \
     cos(x) w l title "cosinus"
## NB: Character \ means continue next line, BUT no space after the character \.

# Save output
## Define the kind of terminal/format I want to use
## Here encapsulated postscript format with color and font Helvetica with police size 20
set terminal postscript enhanced color font "Helvetica,20"
## Define the output file name
set output TITLE.".eps"  # operator . allows to concatenate 2 string
## I replot the actual graph state
replot

