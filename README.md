conda-recipes for IRTK
======================

build
-----
`conda build PACKAGE_NAME`

install locally
---------------
`conda install PACKAGE_NAME --use-local --force`

upload to binstar
-----------------
Follow instructions given at the end of `conda build`

install from binstar
--------------------
If you want to use the Python interface for IRTK, running:

    conda install -c kevin-keraudren python-irtk
    
will take care of all the depencies.

Alternatively, you can choose to only install IRTK:

    conda install -c kevin-keraudren irtk
    
which will install the IRTK binaries, header files and static libraries
in your Anaconda environment.

For more information on Anaconda:
---------------------------------

Anaconda is a free Python distribution that comes with a package manager called `conda`.
It can be downloaded from the website of [Continuum Analytics](http://continuum.io/downloads).

More information on packaging your own Python modules with `conda` can be found in the project's [documentation](http://conda.pydata.org/docs/build.html).

