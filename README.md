# NPBvsNPB-CPP_Reproduction
By Eduardo Machado Martins, Eduardo Felber Eichner and Bernardo Pacheco Fiorini
## Description
This project and article provides a reproduction of experiments that compare the efficiency of the original NAS Parallel Benchmarks, with a C++ version, both using parallel processing with OpenMP, and a comparison between two different classes of work. From that, the behavior of the executions in each situation was carefully evaluated. The results of the project are inside the 'Graphics' folder. The article was written in Portuguese and is inside the folder 'Paper'.
## Dependencies
It was developed to run in a Linux environment. Uses C, C++, Fortran, Gnuplot, Shell, Python and Numpy. When downloaded, the NPB.zip file must be unzipped in the root directory, this file contains the NPB and NPB-CPP source codes. 
Also some files may need to be given execute permission, this can be done with the following command:
```
chmod +x [fileName]
```
Originally, this code was used to run on a multi-core platform with 12 threads, so it is configured to run applications ranging from 1 to 12 cores.
## Execution
To execute the applications, run the following command inside the 'REP-SCRIPTS' folder:
```
./Main.sh
```
##
<div align="center">  
  <img src="https://cdn.discordapp.com/attachments/1076157666986049598/1076170251894534264/rep.png" alt="Game preview" /> 
</div>
