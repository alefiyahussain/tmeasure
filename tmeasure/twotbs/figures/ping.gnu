set xdata time
set timefmt "%y%m%dT%H%M%S"


set xrange ["131211T120000":"131212T120000"]
set format x "%m/%d\n%H:%M"


set term pdf
set border 3 
set xtic nomirror 
set ytics nomirror 

set ylabel 'RTT in ms' 
set output 'ping.pdf' 

set size 1,1
set origin 0,0
set multiplot layout 3,1
plot 'isi-pnnl/ping.time.rttms' u 1:2 title 'ISI-PNNL pathB'
plot 'pnnl-isi/ping.time.rttms' u 1:2 title "PNNL-ISI path B' 
plot 'pnnl-isi/ping.tunnel.time.rttms' u 1:2 title "PNNL-ISI path A"

