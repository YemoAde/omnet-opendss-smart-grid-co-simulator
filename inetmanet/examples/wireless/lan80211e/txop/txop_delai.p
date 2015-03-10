set term postscript eps enhanced
set   autoscale                        # scale axes automatically
set encoding iso_8859_15
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set output "txop_delai.eps"
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title ""
set xlabel "Nombre de stations Voip"
set ylabel "D�lai (en secondes)"

# set xr [0:0.002]
#set yr [0:0.015]

set size ratio 0.5

set key top left noinvert box spacing 3
set style line 1 lw 1 pt 2
set style line 2 lw 1 pt 4
set style line 3 lw 1 pt 5
set style line 4 lw 1 pt 6
set style line 5 lw 1 pt 8
set style line 6 lw 1 pt 10
set style line 7 lw 1 pt 12
set style line 8 lw 1 pt 14
plot    "0.001/voipStats.txt" using ($3):($8) ls 2 title 'Voip, TXOP Voip = 0.001' with linespoints, \
        "0.01/voipStats.txt" using ($3):($8) ls 4 title 'Voip, TXOP Voip = 0.01' with linespoints, \
        "0.001/bestEffortStats.txt" using ($3):($8) ls 6 title 'Best effort, TXOP Voip = 0.001' with linespoints, \
        "0.01/bestEffortStats.txt" using ($3):($8) ls 8 title 'Best effort, TXOP Voip = 0.01' with linespoints

