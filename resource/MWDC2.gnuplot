sizeX=585.695
sizeY=499.9
set arrow 1 from -sizeX,-sizeY to -sizeX,sizeY nohead
set arrow 2 from -sizeX,sizeY to sizeX,sizeY nohead
set arrow 3 from sizeX,sizeY to sizeX,-sizeY nohead
set arrow 4 from sizeX,-sizeY to -sizeX,-sizeY nohead
set xrange [600:-600]
set yrange [-600:600]
set xlabel 'X [mm]'
set ylabel 'Z [mm]'

dW=2

pX=-286
pU=-253

set arrow 5 from pX*dW,sizeY to pX*dW,-sizeY nohead linestyle 1
set arrow 6 from pU*2/sqrt(3)*2+sizeY/sqrt(3),sizeY to pU*2/sqrt(3)*2-sizeY/sqrt(3),-sizeY nohead linestyle 2
#set arrow 7 from pV*2/sqrt(3)*2-sizeY/sqrt(3),sizeY to pV*2/sqrt(3)*2+sizeY/sqrt(3),-sizeY nohead linestyle 3

plot 1/0 title ''
