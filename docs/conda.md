# Conda

## Installation

Download the install script from the conda website

Miniconda Link:
[https://conda.io/miniconda.html](https://conda.io/miniconda.html) Anaconda
Link: [https://www.anaconda.com/download/](https://www.anaconda.com/download/)

Let <DIR> be the path to the installer script, then run the script as

    bash <DIR>/<script-name>.sh

For 64bit linux, you can also download and install miniconda 

    wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
    && Miniconda2-lates-Linux-x86_64.sh      # Miniconda - Python 2.7
    
Append the installation path to the environment variable. For linux

    export PATH="<path-to-installation-dir>/bin:$PATH"

Add this line to ~/.bashrc (for any other shell, it must be added to the
respective config file).

After installing, run update

    conda update conda

## Creating a new environment

You can create a new environment by specifying the name of the environment and
specifying python version

    conda create --name name-of-env python=2.7      # For python 3.5
    conda create --name name-of-env python=3.5      # For python 3.5

In order to create an environment with a custom path, you can specify the
path of the directory

    conda create --prefix <path-to-dir>/<name-of-env> python=2.7

## Activating an environment

If the environment is created in the default directory, i.e. using the name of
the environment only, you can activate it as follows

    source activate name-of-env         # For linux and macOS
    activate name-of-env                # For windows


If it has been created in a custom path

    source activate <path-to-dir>/<name-of-env>         # For linux and macOS
    activate <path-to-dir>/<name-of-env>                # For windows

To deactivate

    source deactivate # For linux and macOS
    deactivate # For windows

## Managing Packages

### Installing a package

It is possible to install a package from both conda, as well as other package
managers. For example both

    conda install numpy
    pip install numpy

will install numpy in the currently activated environment
