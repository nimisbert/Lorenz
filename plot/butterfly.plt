#
# @brief : Representation of Butterfly data exported from SPICE simulation
# @input : ../data/butterfly.dat
# @author : nimisbert
#
reset 
set termopt enhanced
set terminal gif animate delay 3 loop 0 optimize 
set output "butterfly.gif"
set xlabel "v_x(t) [V]"
set ylabel "v_y(t) [V]"
set zlabel "v_z(t) [V]"
set key noautotitle
set grid

n = 360
do for [i=1:n] {
    set view 60, i*360/n
    splot "../data/butterfly.dat" u 2:4:6 with lines linecolor rgb "black"
}
