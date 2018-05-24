# vim: set ft=gnuplot
set xrange [600:-600]
set yrange [-600:600]
set xlabel 'X [mm]'
set ylabel 'Z [mm]'
lengthX=3.90625
lengthY=3.125
sizeX=500
sizeY=400
set arrow 1 from -sizeX,-sizeY to -sizeX,sizeY nohead
set arrow 2 from -sizeX,sizeY to sizeX,sizeY nohead
set arrow 3 from sizeX,sizeY to sizeX,-sizeY nohead
set arrow 4 from sizeX,-sizeY to -sizeX,-sizeY nohead
p 'resource/TPC.data' u ($1*lengthX):($2*lengthY):(lengthX/2):(lengthY/2) with xyerrorbars
