c CLASS = B
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        integer nx, ny, nz, maxdim, niter_default, dflt
        integer ntotal, nxp, nyp, ntotalp
        parameter (nx=512, ny=256, nz=256, maxdim=512)
        parameter (niter_default=20)
        parameter (dflt=1)
        parameter (nxp=nx+1, nyp=ny)
        parameter (ntotal=nx*nyp*nz)
        parameter (ntotalp=nxp*nyp*nz)
        logical  convertdouble
        parameter (convertdouble = .false.)
        character compiletime*11
        parameter (compiletime='28 Apr 2022')
        character npbversion*5
        parameter (npbversion='3.3.1')
        character libver*6
        parameter (libver='201511')
        character cver*5
        parameter (cver='9.4.0')
        character cs1*17
        parameter (cs1='gfortran -fopenmp')
        character cs2*6
        parameter (cs2='$(F77)')
        character cs3*6
        parameter (cs3='(none)')
        character cs4*6
        parameter (cs4='(none)')
        character cs5*20
        parameter (cs5='-O3 -mcmodel=medium ')
        character cs6*20
        parameter (cs6='-O3 -mcmodel=medium ')
        character cs7*6
        parameter (cs7='(none)')
