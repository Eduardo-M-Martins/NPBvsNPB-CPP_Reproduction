reset
set terminal png size 1096,800 font "Arial,18
set autoscale xy
set xrange[1:12]
set logscale y 2
set grid lc rgb 'black' lw 2
set xlabel "  Number of threads  "
set ylabel "  Execution time [sec]  "
set xtics 1
set border lw 2
set key top right box lc rgb 'white' dashtype solid

set output 'G-BT.png'
set title 'BT with OpenMP (NPB-CPP vs NPB)' font "Arial,20
plot "zCPP-BT.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-BT.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set output 'G-CG.png'
set title 'CG with OpenMP (NPB-CPP vs NPB)' font "Arial,20
plot "zCPP-CG.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-CG.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set output 'G-EP.png'
set title 'EP with OpenMP (NPB-CPP vs NPB)' font "Arial,20
plot "zCPP-EP.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-EP.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set output 'G-FT.png'
set title 'FT with OpenMP (NPB-CPP vs NPB)' font "Arial,20
plot "zCPP-FT.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-FT.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set output 'G-IS.png'
set title 'IS with OpenMP (NPB-CPP vs NPB)' font "Arial,20
plot "zCPP-IS.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-IS.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "C"

set output 'G-LU.png'
set title 'LU with OpenMP (NPB-CPP vs NPB)' font "Arial,20
plot "zCPP-LU.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-LU.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set output 'G-MG.png'
set title 'MG with OpenMP (NPB-CPP vs NPB)' font "Arial,20
plot "zCPP-MG.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-MG.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set output 'G-SP.png'
set title 'SP with OpenMP (NPB-CPP vs NPB)' font "Arial,20
plot "zCPP-SP.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-SP.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"
